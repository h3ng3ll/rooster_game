import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'package:rooster_game/src/pages/game_page/dialog/lose_dialog.dart';
import 'package:rooster_game/src/pages/game_page/dialog/win_dialog.dart';
import 'package:rooster_game/src/pages/game_page/flame_component/chicken_match_game.dart';
import 'package:rooster_game/src/pages/game_page/widgets/game_field_bg.dart';
import 'package:rooster_game/src/pages/game_page/widgets/pause_nav_btn.dart';
import 'package:rooster_game/src/widgets/custom_app_bar.dart';

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
  int score = 0;
  int moves = 20;

  @override
  void initState() {
    super.initState();

    game = ChickenMatchGame(
      onScoreChanged: (newScore) => setState(
        () => score = newScore,
      ),
      onMovesChanged: (newMoves) => setState(
        () => moves = newMoves,
      ),
      onWin: _showWinDialog,
      onLose: _showLoseDialog,
    );
  }

  void _resetScores() {
    score = 0;
    moves = 20;
  }

  void _onTapHome() {}

  void _onRestartGame() {
    _resetScores();
    game = ChickenMatchGame(
      onScoreChanged: (newScore) => setState(
        () => score = newScore,
      ),
      onMovesChanged: (newMoves) => setState(
        () => moves = newMoves,
      ),
      onWin: _showWinDialog,
      onLose: _showLoseDialog,
    );
  }

  void _showWinDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => WinDialog(
        score: score,
        best: 9000,
        onTapHome: _onTapHome,
        onTapRestart: _onRestartGame,
        onTapNext: () {},
      ),
    );
  }

  void _showLoseDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => LoseDialog(
        score: score,
        best: 9000,
        onTapHome: _onTapHome,
        onTapTryAgain: _onRestartGame,
      ),
    );
  }

  void _onPause() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Пауза'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('Продолжить'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.of(context).pop();
            },
            child: Text('Выход'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GameFieldBg(
      child: Scaffold(
        appBar: CustomAppBar(
          actions: [
            PauseNavBtn(
              onTap: _onPause,
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              // Шапка с информацией
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: _onPause,
                      icon: Icon(Icons.pause, color: Colors.white),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber),
                          SizedBox(width: 8),
                          Text(
                            '$score',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.swap_horiz, color: Colors.white),
                          SizedBox(width: 8),
                          Text(
                            '$moves',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Игровое поле
              Expanded(
                child: GameWidget(
                  game: game,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
