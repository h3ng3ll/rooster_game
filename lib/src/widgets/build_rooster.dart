import 'dart:math';
import 'package:flutter/material.dart';
import '../../gen/assets.gen.dart';

class BuildRooster extends StatefulWidget {
  final double? width;
  final double? height;

  const BuildRooster({
    super.key,
    this.width,
    this.height,
  });

  @override
  State<BuildRooster> createState() => _BuildRoosterState();
}

class _BuildRoosterState extends State<BuildRooster>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(); // повторяем бесконечно
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, __) {
        // плавное колебание
        final swayX = sin(_controller.value * 2 * pi) * 5; // смещение по X ±5px
        final swayY = cos(_controller.value * 2 * pi) * 2; // смещение по Y ±2px
        final rotate = sin(_controller.value * 2 * pi) * 0.02; // вращение ±1.2°

        return Transform.translate(
          offset: Offset(swayX, swayY),
          child: Transform.rotate(
            angle: rotate,
            child: Container(
              width: widget.width,
              height: widget.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    Assets.images.rooster.path,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
