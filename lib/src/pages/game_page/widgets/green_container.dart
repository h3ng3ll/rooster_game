import 'package:flutter/material.dart';
import 'package:rooster_game/src/resourses/colors/app_colors.dart';

class GreenContainer extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;
  final EdgeInsets? padding;

  const GreenContainer({
    super.key,
    required this.child,
    this.width,
    this.height,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding:
          padding ??
          EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 20.0,
          ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          12.0,
        ),
        color: AppColors.kellyGreen.value,
      ),
      child: child,
    );
  }
}
