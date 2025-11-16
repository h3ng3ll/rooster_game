import 'package:flutter/material.dart';

class TransparentContainer extends StatelessWidget {
  final Widget child;

  const TransparentContainer({super.key, required this.child,});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
