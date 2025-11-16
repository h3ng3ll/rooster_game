import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rooster_game/src/resourses/colors/app_colors.dart';

import '../../../../gen/assets.gen.dart';
import '../../game_page/bloc/shop_bloc/shop_bloc.dart';

class BuildCoinBalance extends StatelessWidget {
  const BuildCoinBalance({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final balance = context.watch<ShopBloc>().state.shop.balance;
    return SizedBox(
      height: 50.0,
      // width: 50.0,
      child: Stack(
        clipBehavior: Clip.none,
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
              child:   Center(
                child: Text(
                  balance.toString(),
                  style: TextStyle(
                    color: AppColors.white.value,
                    fontSize: 14.0,
                  ),
                ),
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
              fit: BoxFit.cover,
              Assets.images.coin.path,
            ),
          ),
        ],
      ),
    );
  }
}
