import 'package:flutter/material.dart';
import 'package:rooster_game/src/widgets/stroke_text.dart';

import '../../gen/assets.gen.dart';

class ActionBtn extends StatefulWidget {
  final String text;
  final double? width;
  final double? height;
  final double fontSize;
  final VoidCallback onTap;

  const ActionBtn({
    super.key,
    required this.text,
    this.width,
    this.height,
    this.fontSize = 24,
    required this.onTap,
  });

  @override
  State<ActionBtn> createState() => _ActionBtnState();
}

class _ActionBtnState extends State<ActionBtn> {
  double _scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => _scale = 0.95),
      onTapUp: (_) => setState(() => _scale = 1.0),
      onTapCancel: () => setState(() => _scale = 1.0),

      onTap: widget.onTap,
      child: AnimatedScale(
        scale: _scale,
        duration: Duration(
          milliseconds: 100,
        ),
        child: Container(
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                Assets.images.actionBtn.path,
              ),
            ),
          ),
          child: Center(
            child: StrokedText(
              widget.text,
              fontSize: widget.fontSize,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
