import 'package:flutter/material.dart';
import 'package:rooster_game/src/widgets/padding/horizontal_padding.dart';

import '../../gen/assets.gen.dart';
import 'animation/spark_animation.dart';




class WallInFlameBgWidget extends StatelessWidget {

  final Widget child;

  const WallInFlameBgWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return SparkAnimation(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              Assets.images.wallInFlame.path,
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
