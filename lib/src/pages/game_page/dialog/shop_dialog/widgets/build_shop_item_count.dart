import 'package:flutter/material.dart';

class BuildShopItemCount extends StatelessWidget {
  final int count;

  const BuildShopItemCount({
    super.key,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'x$count',
      style: const TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
