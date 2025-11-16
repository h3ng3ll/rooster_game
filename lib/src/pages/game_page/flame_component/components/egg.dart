import 'dart:async';
import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flame/events.dart';
import 'package:flutter/material.dart';
import 'package:rooster_game/src/pages/game_page/flame_component/game/game_board.dart';

enum EggColor {
  red,
  blue,
  yellow,
  green,
  purple,
  orange;

  Color toColor() {
    switch (this) {
      case EggColor.red:
        return Colors.red;
      case EggColor.blue:
        return Colors.blue;
      case EggColor.yellow:
        return Colors.yellow;
      case EggColor.green:
        return Colors.green;
      case EggColor.purple:
        return Colors.purple;
      case EggColor.orange:
        return Colors.orange;
    }
  }

  String toAssetPath() {
    switch (this) {
      case EggColor.red:
        return 'crimson_egg.png';
      case EggColor.blue:
        return 'ice_egg.png';
      case EggColor.yellow:
        return 'lemon_egg.png';
      case EggColor.green:
        return 'green_egg.png';
      case EggColor.purple:
        return 'purple_egg.png';
      case EggColor.orange:
        return 'orange_white_egg.png';
    }
  }
}

class Egg extends SpriteComponent with TapCallbacks {
  final EggColor color;
  int row;
  int col;
  bool isSelected = false;
  // static const double cellSize = 52.0;
  static const double cellSize = 52.0;

  Egg({
    required this.color,
    required this.row,
    required this.col,
  }) : super(
         size: Vector2.all(cellSize - 4),
         anchor: Anchor.center,
       );

  @override
  Future<void> onLoad() async {
    await super.onLoad();

    // Загружаем спрайт
    sprite = await Sprite.load(
      color.toAssetPath(),
    );

    // Устанавливаем позицию
    position = Vector2(
      col * cellSize + cellSize / 2,
      row * cellSize + cellSize / 2,
    );
  }

  @override
  void onTapDown(TapDownEvent event) async {
    final gameBoard = findParent<GameBoard>();
    gameBoard?.onEggTapped(
      this,
    );

  }

  // Анимация перемещения
  Future<void> moveTo(int newRow, int newCol) async {
    // Убираем любые висящие эффекты
    children.whereType<MoveEffect>().forEach((e) => e.removeFromParent());

    final target = Vector2(
      newCol * cellSize + cellSize / 2,
      newRow * cellSize + cellSize / 2,
    );

    final effect = MoveEffect.to(
      target,
      EffectController(duration: 0.25),
    );

    await add(effect);
    await effect.completed;   // <<< гарантирует ОКОНЧАНИЕ эффекта

    position = target;        // <<< ЖЁСТКО фиксируем
    row = newRow;
    col = newCol;
  }

  // Анимация выделения
  void setSelected(bool selected) {
    isSelected = selected;
    if (selected) {
      add(
        ScaleEffect.by(
          Vector2.all(1.2),
          EffectController(
            duration: 0.2,
            reverseDuration: 0.2,
            infinite: true,
          ),
        ),
      );
    } else {
      removeWhere((component) => component is ScaleEffect);
      scale = Vector2.all(1.0);
    }
  }
}
