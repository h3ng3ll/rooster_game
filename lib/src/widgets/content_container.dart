import 'package:flutter/material.dart';
import 'package:rooster_game/src/resourses/colors/app_colors.dart';

class ContentContainer extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;
  final EdgeInsets? padding;

  const ContentContainer({
    super.key,
    required this.child,
    this.width,
    this.height,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.all(
        12.0,
      ),
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          12.0,
        ),
        color: AppColors.frenchPlum.value,
        border: Border.all(
          color: AppColors.rosePink.value,
          width: 2.0,
        ),
      ),
      child: child,
    );
  }
}
