import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget>? actions;
  final double? height;

  const CustomAppBar({
    super.key,
    this.actions,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      toolbarHeight: height ?? 120,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(
    height ?? 110.0,
  );
}
