import 'package:flutter/material.dart';
import 'package:rooster_game/src/widgets/stroke_text.dart';

import '../../gen/assets.gen.dart';

class ActionBtn extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(
        25.5,
      ),
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              Assets.images.actionBtn.path,
            ),
          ),
        ),
        child: Center(
          child: StrokedText(
            text,
            fontSize: fontSize,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
