import 'package:flutter/material.dart';
import 'package:rooster_game/src/animation/spark_animation.dart';

import '../../../../gen/assets.gen.dart';
import '../../../widgets/padding/horizontal_padding.dart';

class GameFieldBg extends StatelessWidget {
  final Widget child;

  const GameFieldBg({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SparkAnimation(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              Assets.images.gameFieldBg.path,
            ),
          ),
        ),
        child: SafeArea(
          child: HorizontalPadding(
            child: child,
          ),
        ),
      ),
    );
  }
}
