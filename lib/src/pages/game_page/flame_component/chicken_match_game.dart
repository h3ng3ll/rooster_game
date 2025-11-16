import 'dart:async';

import 'package:flame/extensions.dart';
import 'package:flame/game.dart';
import 'package:flame_bloc/flame_bloc.dart';
import 'package:flutter/material.dart';
import 'package:rooster_game/src/models/game_config.dart';
import 'package:rooster_game/src/pages/game_page/bloc/game_bloc/game_bloc.dart';
import 'package:rooster_game/src/pages/game_page/flame_component/components/egg.dart';
import 'package:rooster_game/src/pages/game_page/flame_component/game/game_board.dart';
import 'package:rooster_game/src/pages/settings_page/bloc/settings_bloc/settings_bloc.dart';

class ChickenMatchGame extends FlameGame {
  late GameBoard gameBoard;
  final GameConfig config;
  final GameBloc gameBloc;
  final SettingsBloc settingsBloc;

  ChickenMatchGame({
    super.children,
    super.world,
    super.camera,
    required this.config,
    required this.gameBloc,
    required this.settingsBloc,
  });

  @override
  Color backgroundColor() => Colors.transparent;

  @override
  FutureOr<void> onLoad() async {
    await super.onLoad();
    await Future.microtask(() {});
    // debugMode = true;

    gameBoard = GameBoard(
      gridSize: gameBloc.state.config.gridSize,
    );

    gameBoard.position = Vector2(
      (size.x - gameBoard.gridSize * Egg.cellSize) / 2,
      100,
    );

    /// wait unitialization
    await add(
      FlameBlocProvider.value(
        value: gameBloc,
        children: [
          gameBoard,
        ],
      ),
    );
  }
}
