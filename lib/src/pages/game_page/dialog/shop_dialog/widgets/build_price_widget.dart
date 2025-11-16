import 'package:flutter/material.dart';

import '../../../../../../gen/assets.gen.dart';

class BuildPriceWidget extends StatelessWidget {
  final int price;

  const BuildPriceWidget({
    super.key,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$price',
          style: const TextStyle(
            color: Colors.yellow,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 5),
        Image.asset(
          Assets.images.coin.path,
          width: 32,
          height: 32,
        ),
      ],
    );
  }
}
