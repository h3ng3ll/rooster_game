import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:rooster_game/src/bloc/balance_bloc/balance_bloc.dart';
import 'package:rooster_game/src/bloc/balance_bloc/balance_bloc.dart';
import 'package:rooster_game/src/pages/home_page/widgets/build_coin_balance.dart';
import 'package:rooster_game/src/widgets/nav_btn/nav_btn.dart';
import 'package:rooster_game/src/widgets/nav_btn/widets/back_nav_btn.dart';

import '../../widgets/custom_app_bar.dart';
import '../../widgets/wall_in_flame_bg_widget.dart';

class ChangeLevelPage extends StatelessWidget {
  const ChangeLevelPage({super.key});

  void onTapBack() {}

  void onTapLevel(int level) {}

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BalanceBloc, BalanceState>(
      builder: (context, state) {
        return WallInFlameBgWidget(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: CustomAppBar(
              actions: [
                BackNavBtn(
                  onTap: onTapBack,
                ),
                Spacer(),
                BuildCoinBalance(
                  balance: state.balance,
                ),
              ],
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'CHANGE LEVEL',
                  style: TextStyle(
                    fontSize: 28.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                Gap(90.0),
                Expanded(
                  child: GridView.builder(
                    itemCount: 9,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      // mainAxisExtent: 15.0,
                      mainAxisSpacing: 40.0,
                      crossAxisSpacing: 25.0,
                    ),
                    itemBuilder: (context, index) {
                      return NavBtn(
                        child: Center(
                          child: Text(
                            (index + 1).toString(),
                            style: TextStyle(
                              fontSize: 28.0,
                            ),
                          ),
                        ),
                        onTap: () => onTapLevel(index),
                        padding: EdgeInsets.all(
                          25.0,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
