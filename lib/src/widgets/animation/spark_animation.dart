
import 'dart:math';
import 'package:flutter/material.dart';


class SparkAnimation extends StatefulWidget {
  final Widget child;

  const SparkAnimation({
    super.key,
    required this.child,
  });

  @override
  State<SparkAnimation> createState() => _SparkAnimationState();
}

class _SparkAnimationState extends State<SparkAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final Random _rnd = Random();

  List<Offset> positions = [];
  List<double> flickerOffsets = [];

  @override
  void initState() {
    super.initState();

    positions = List.generate(
      10,
          (_) => Offset(
        _rnd.nextDouble() * 300,
        _rnd.nextDouble() * 600,
      ),
    );

    flickerOffsets = List.generate(10, (_) => _rnd.nextDouble() * 0.4);

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _randomizePositions();
        _controller.forward(from: 0);
      }
    });

    _controller.forward();
  }

  void _randomizePositions() {
    positions = List.generate(
      10,
          (_) => Offset(
        _rnd.nextDouble() * 300,
        _rnd.nextDouble() * 600,
      ),
    );

    flickerOffsets = List.generate(10, (_) => _rnd.nextDouble() * 0.4);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  double _flickerValue(int index) {
    double base = 0.5 + sin(_controller.value * pi * 4 + index) * 0.5;
    return base * (0.6 + flickerOffsets[index]);
  }


  double _opacityFor(int index) {
    double value = 0.2 + _flickerValue(index);
    return value.clamp(0.0, 1.0);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        widget.child,


        ...List.generate(positions.length, (i) {
          final pos = positions[i];

          return AnimatedBuilder(
            animation: _controller,
            builder: (_, __) {
              return Positioned(
                left: pos.dx,
                top: pos.dy + (_controller.value * -20),
                child: Opacity(
                  opacity: _opacityFor(i),
                  child: Container(
                    width: 4,
                    height: 4,
                    decoration: const BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              );
            },
          );
        }),
      ],
    );
  }
}
