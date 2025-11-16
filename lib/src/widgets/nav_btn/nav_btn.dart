import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';

class NavBtn extends StatelessWidget {
  final Widget child;
  final VoidCallback? onTap;
  final double? width;
  final double? height;
  final EdgeInsets padding;

  const NavBtn({
    super.key,
    required this.child,
    this.onTap,
    this.width,
    this.height, required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding,
        width: width ?? 75.0,
        height: height ?? 75.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.contain,
            image: AssetImage(
              Assets.images.navBtn.path,
            ),
          ),
        ),
        child: child,
      ),
    );
  }
}
