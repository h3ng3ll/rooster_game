import 'package:flutter/material.dart';
import 'package:rooster_game/src/resourses/colors/app_colors.dart';
import 'package:rooster_game/src/widgets/nav_btn/nav_btn.dart';


class ShopNavBtn extends StatelessWidget {
  final VoidCallback onTap;
  final double? width;
  final double? height;
  final EdgeInsets? padding;

  const ShopNavBtn({
    super.key,
    required this.onTap,
    this.width,
    this.height,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return NavBtn(
      padding:
          padding ??
          EdgeInsets.symmetric(
            vertical: 16.0,
          ),
      width: width ?? 80.0,
      height: height ?? 80.0,
      onTap: onTap,
      child: Icon(
        Icons.shopping_cart_outlined,
        color: AppColors.white.value,
        size: 40.0,
      ),
    );
  }
}
