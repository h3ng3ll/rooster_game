import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';

class BuildRooster extends StatelessWidget {
  final double? width;
  final double? height;

  const BuildRooster({
    super.key,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(

          fit: BoxFit.cover,
          image: AssetImage(

            Assets.images.rooster.path,
          ),
        ),
      ),
    );
  }
}
