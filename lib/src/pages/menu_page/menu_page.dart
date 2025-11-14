import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:rooster_game/src/widgets/action_btn.dart';
import 'package:rooster_game/src/widgets/content_container.dart';

import '../../bloc/balance_bloc/balance_bloc.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/nav_btn/nav_btn.dart';
import '../../widgets/nav_btn/widets/back_nav_btn.dart';
import '../../widgets/wall_in_flame_bg_widget.dart';
import '../home_page/widgets/build_coin_balance.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  void onTapBack() {}

  void onTapProfile() {}

  void onTapSettings() {}

  void onTapLeaderBoard() {}

  void onTapPrivacyPolicy() {}

  void ontTapTermOfUse() {}

  @override
  Widget build(BuildContext context) {
    final btnSize = Size(
      200.0,
      100.0,
    );
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
            body: Padding(
              padding: const EdgeInsets.only(
                top: 40.0,
              ),
              child: ContentContainer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,

                  children: [
                    Gap(25.0),
                    Text(
                      'MENU',
                      style: TextStyle(
                        fontSize: 28.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Gap(30.0),
                    Expanded(
                      child: Column(
                        spacing: 15,
                        children: [
                          ActionBtn(
                            width: btnSize.width,
                            height: btnSize.height,
                            text: 'PROFILE',
                            onTap: onTapProfile,
                          ),
                          ActionBtn(
                            width: btnSize.width,
                            height: btnSize.height,
                            text: 'SETTINGS',
                            onTap: onTapSettings,
                          ),
                          ActionBtn(
                            width: btnSize.width,
                            height: btnSize.height,
                            text: 'LEADERBOARD',
                            fontSize: 16,
                            onTap: onTapLeaderBoard,
                          ),
                          ActionBtn(
                            width: btnSize.width,
                            height: btnSize.height,
                            text: 'PRIVACY POLICY',
                            onTap: onTapPrivacyPolicy,
                          ),
                          ActionBtn(
                            width: btnSize.width,
                            height: btnSize.height,
                            text: 'TERM\n OF USE',
                            onTap: ontTapTermOfUse,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
