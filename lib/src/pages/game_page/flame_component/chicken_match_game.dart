import 'dart:async';

import 'package:flame/game.dart';
import 'package:rooster_game/src/pages/game_page/flame_component/components/egg.dart';
import 'package:rooster_game/src/pages/game_page/flame_component/game/game_board.dart';

class ChickenMatchGame extends FlameGame {
  late GameBoard gameBoard;

  // Коллбэки для UI
  final Function(int score) onScoreChanged;
  final Function(int moves) onMovesChanged;
  final Function() onWin;
  final Function() onLose;

  ChickenMatchGame({
    super.children,
    super.world,
    super.camera,
    required this.onScoreChanged,
    required this.onMovesChanged,
    required this.onWin,
    required this.onLose,
  });

  // @override
  // FutureOr<void> onLoad() async {
  //   final assets = [
  //     Assets.images.burstEgg,
  //     Assets.images.crimsonEgg,
  //     Assets.images.fireEgg,
  //     Assets.images.greenEgg,
  //     Assets.images.iceEgg,
  //     Assets.images.lemonEgg,
  //     Assets.images.orangeWhiteEgg,
  //     Assets.images.purpleEgg,
  //     Assets.images.redEgg,
  //     Assets.images.redWhiteEgg,
  //     Assets.images.whiteRedEgg,
  //     Assets.images.whiteStarPinkEgg,
  //     Assets.images.x10,
  //     Assets.images.x20,
  //     Assets.images.x30,
  //     Assets.images.x60,
  //   ];
  //   // images.load()
  //   return super.onLoad();
  // }

  @override
  FutureOr<void> onLoad() async {
    await super.onLoad();

    debugMode = true;
    // Создаем игровое поле
    gameBoard = GameBoard(
      gridSize: 4,
      onLose: onLose,
      onMovesChanged: onMovesChanged,
      onWin: onWin,
      onScoreChanged: onScoreChanged,
    );

    // Центрируем поле
    gameBoard.position = Vector2(
      (size.x - gameBoard.gridSize * Egg.cellSize) / 2,
      100, // Отступ сверху для UI
    );

    add(gameBoard);
  }
}
