import 'package:flutter/material.dart';
import 'package:rooster_game/src/resourses/colors/app_colors.dart';

class StrokedText extends StatelessWidget {
  final String text;
  final double strokeWidth;
  final Color? strokeColor;
  final TextStyle? style;
  final double? fontSize;
  final TextAlign? textAlign;

  const StrokedText(
    this.text, {
    super.key,
    this.strokeWidth = 1.5,
    this.strokeColor,
    this.style,
    this.fontSize,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    final baseStyle = style ?? Theme.of(context).textTheme.bodyLarge!;

    return Stack(
      children: [
        // Stroke
        Text(
          text,
          style: baseStyle.copyWith(
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = strokeWidth
              ..color = strokeColor ?? AppColors.frenchPlum.value,
            fontSize: fontSize,
          ),
          textAlign: textAlign,
        ),
        // Fill
        Text(
          text,
          style: baseStyle.copyWith(
            fontSize: fontSize,
          ),
          textAlign: textAlign,
        ),
      ],
    );
  }
}
