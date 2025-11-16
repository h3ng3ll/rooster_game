import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:rooster_game/src/models/game_levels.dart';
import 'package:rooster_game/src/models/shop_item/shop_item.dart';
import 'package:rooster_game/src/pages/game_page/bloc/shop_bloc/shop_bloc.dart';
import 'package:rooster_game/src/pages/game_page/dialog/lose_dialog.dart';
import 'package:rooster_game/src/pages/game_page/dialog/paused_dialog.dart';
import 'package:rooster_game/src/pages/game_page/dialog/shop_dialog/shop_dialog.dart';
import 'package:rooster_game/src/pages/game_page/dialog/win_dialog.dart';
import 'package:rooster_game/src/pages/game_page/flame_component/chicken_match_game.dart';
import 'package:rooster_game/src/pages/game_page/widgets/build_game_bottom.dart';
import 'package:rooster_game/src/pages/game_page/widgets/game_field_bg.dart';
import 'package:rooster_game/src/pages/game_page/widgets/pause_nav_btn.dart';
import 'package:rooster_game/src/pages/game_page/widgets/remain_tries.dart';
import 'package:rooster_game/src/pages/game_page/widgets/score_btn.dart';
import 'package:rooster_game/src/pages/game_page/widgets/shop_nav_btn.dart';
import 'package:rooster_game/src/widgets/custom_app_bar.dart';

import '../../bloc/game_stat_bloc/game_stat_bloc.dart';
import '../../models/shop_items.dart';
import 'bloc/game_bloc/game_bloc.dart';

class GamePageArgs {
  final int level;

  GamePageArgs({
    required this.level,
  });
}

class GamePage extends StatefulWidget {
  final GamePageArgs args;

  const GamePage({
    super.key,
    required this.args,
  });

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  late ChickenMatchGame game;
  late final GameBloc _gameBloc;
  late final StreamSubscription _gameBlocSubscription;
  bool isOpenedDialog = false;

  @override
  void initState() {
    super.initState();
    _gameBloc =
        GameBloc(
          level: widget.args.level,
        )..add(
          GameEvent.init(),
        );

    _gameBlocSubscription = _gameBloc.stream.listen(
      (e) async {
        if (e.score > e.config.demandScore) {
          _updateBestScoreIfNeeded();
          _incrementLevelIfUnlocked();

          await _showWinDialog();
        } else if (e.tries <= 0) {
          _updateBestScoreIfNeeded();
          await _showLoseDialog();
        }
      },
    );

    game = ChickenMatchGame(
      gameBloc: _gameBloc,
      config: GameLevels.levels[widget.args.level],
    );
  }

  @override
  void dispose() {
    _gameBlocSubscription.cancel();
    _gameBloc.close();
    super.dispose();
  }

  void _incrementLevelIfUnlocked() {
    final gameStatBloc = context.read<GameStatBloc>();
    final lastUnlockedLevel = gameStatBloc.state.gameStat.currentLevel;

    /// if current level is the latest e.g. equal to this

    if (_gameBloc.state.level == lastUnlockedLevel) {
      /// update new best score by replacing current one
      gameStatBloc.add(
        GameStatEvent.unlockNextLevel(),
      );
    }
  }

  void _updateBestScoreIfNeeded() {
    final gameStatBloc = context.read<GameStatBloc>();
    final currentBestScore = gameStatBloc.state.gameStat.bestScore;
    if (_gameBloc.state.score > currentBestScore) {
      /// update new best score by replacing current one
      gameStatBloc.add(
        GameStatEvent.updateBestScore(
          score: _gameBloc.state.score,
        ),
      );
    }
  }

  Future<void> _showWinDialog() async {
    if (isOpenedDialog) return;
    isOpenedDialog = true;
    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => WinDialog(
        score: _gameBloc.state.score,
        best: context.read<GameStatBloc>().state.gameStat.bestScore,
        onTapHome: _onTapHome,
        onTapRestart: _onRestartGame,
        onTapNext: _onTapNext,
        hasNext: _gameBloc.state.level < GameLevels.levels.length,
      ),
    );
    isOpenedDialog = false;
  }

  Future<void> _showLoseDialog() async {
    if (isOpenedDialog) return;
    isOpenedDialog = true;
    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => LoseDialog(
        score: _gameBloc.state.score,
        best: context.read<GameStatBloc>().state.gameStat.bestScore,
        onTapHome: _onTapHome,
        onTapTryAgain: _onRestartGame,
      ),
    );
    isOpenedDialog = false;
  }

  void _onPause() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => PausedDialog(
        score: _gameBloc.state.score,
        onTapHome: _onTapHome,
        onTapRestart: _onRestartGame,
      ),
    );
  }

  void _onTapHome() {
    context.pop();
  }

  void _onTapShop() {
    showDialog(
      context: context,
      builder:
          (
            context,
          ) => BlocProvider.value(
            value: context.read<ShopBloc>(),
            child: ShopDialog(),
          ),
    );
  }

  void _onTapShopItem(EShopItemValue value) {
    context.read<ShopBloc>().add(
      ShopEvent.spent(
        value: value,
      ),
    );

    final item = ShopItems.byValue(
      value,
    );

    if (value == EShopItemValue.addAttempts) {
      _gameBloc.add(
        GameEvent.addTries(
          count: item.count,
        ),
      );
    }

    /// process other purchase items here
  }

  void _onTapNext() {
    _gameBloc.add(
      GameEvent.nextLevel(),
    );
    game = ChickenMatchGame(
      gameBloc: _gameBloc,
      config: GameLevels.levels[widget.args.level],
    );
  }

  void _onRestartGame() {
    _gameBloc.add(
      GameEvent.init(),
    );
    game = ChickenMatchGame(
      config: GameLevels.levels[widget.args.level],
      gameBloc: _gameBloc,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GameBloc>.value(
      value: _gameBloc,
      child: GameFieldBg(
        child: BlocBuilder<GameBloc, GameState>(
          builder: (context, state) {
            return Scaffold(
              appBar: CustomAppBar(
                height: 200,
                actions: [
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            PauseNavBtn(
                              onTap: _onPause,
                            ),
                            Spacer(),
                            ShopNavBtn(
                              onTap: _onTapShop,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ScoreBtn(
                                  score: _gameBloc.state.score,
                                  goal: _gameBloc.state.config.demandScore,
                                ),
                                Gap(20.0),
                                // Spacer(),
                                RemainTries(
                                  moves: _gameBloc.state.tries,
                                ),
                              ],
                            ),
                            // BuildCoinBalance(
                            //   balance: 6,
                            // ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              backgroundColor: Colors.transparent,
              body: GameWidget(
                game: game,
              ),
              bottomNavigationBar: BuildGameBottom(
                onTapShopItem: _onTapShopItem,
              ),
            );
          },
        ),
      ),
    );
  }
}
