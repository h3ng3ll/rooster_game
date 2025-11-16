import 'package:flutter/material.dart';

class FlashOverlay extends StatefulWidget {
  final Duration duration;
  final Color color;

  const FlashOverlay({
    super.key,
    this.duration = const Duration(
      milliseconds: 300,
    ),
    this.color = Colors.white,
  });

  @override
  State<FlashOverlay> createState() => _FlashOverlayState();
}

class _FlashOverlayState extends State<FlashOverlay>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacity;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
    _opacity =
        Tween<double>(begin: 1, end: 0).animate(
          _controller,
        )..addListener(() {
          setState(() {});
        });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Opacity(
        opacity: _opacity.value,
        child: Container(
          color: widget.color,
        ),
      ),
    );
  }
}
