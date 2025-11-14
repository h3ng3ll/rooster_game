import 'package:flutter/material.dart';
import 'package:rooster_game/src/resourses/colors/app_colors.dart';

import '../../../../gen/assets.gen.dart';

class BuildCoinBalance extends StatelessWidget {
  final int balance;

  const BuildCoinBalance({
    super.key,
    required this.balance,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Container(
            width: 110.0,
            height: 30.0,
            padding: EdgeInsets.only(
              right: 50.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                12.0,
              ),
              color: AppColors.darkOrange.value,
              border: Border.all(
                color: AppColors.ferrariRed.value,
              ),
            ),
            child: Stack(
              children: [
                Center(
                  child: Text(
                    balance.toString(),
                    style: TextStyle(
                      color: AppColors.white.value,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          top: 0,
          // alignment: Alignment.centerRight,
          child: Image.asset(
            width: 50.0,
            height: 50.0,
            Assets.images.coin.path,
          ),
        ),
      ],
    );
  }
}
