import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:rooster_game/src/pages/game_page/bloc/shop_bloc/shop_bloc.dart';
import 'package:rooster_game/src/routes/app_routes_paths.dart';
import 'package:rooster_game/src/widgets/action_btn.dart';
import 'package:rooster_game/src/widgets/content_container.dart';

import '../../widgets/custom_app_bar.dart';
import '../../widgets/nav_btn/widets/back_nav_btn.dart';
import '../../widgets/wall_in_flame_bg_widget.dart';
import '../home_page/widgets/build_coin_balance.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  void onTapBack(BuildContext context) {
    context.pop();
  }

  void onTapProfile(BuildContext context) {
    context.pushNamed(
      AppRoutesPaths.profileRoute,
    );
  }

  void onTapSettings(BuildContext context) {
    context.pushNamed(
      AppRoutesPaths.settingsRoute,
    );
  }

  void onTapLeaderBoard(BuildContext context) {
    context.pushNamed(
      AppRoutesPaths.leaderRoute,
    );
  }

  void onTapPrivacyPolicy(BuildContext context) {
    context.pushNamed(
      AppRoutesPaths.privacyRoute,
    );
  }

  void ontTapTermOfUse(BuildContext context) {
    context.pushNamed(
      AppRoutesPaths.termOfUseRoute,
    );
  }

  @override
  Widget build(BuildContext context) {
    final btnSize = Size(
      200.0,
      100.0,
    );
    return BlocBuilder<ShopBloc, ShopState>(
      builder: (context, state) {
        return WallInFlameBgWidget(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: CustomAppBar(
              actions: [
                BackNavBtn(
                  onTap: () => onTapBack(
                    context,
                  ),
                ),
                Spacer(),
                BuildCoinBalance(),
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
                          Expanded(
                            child: ActionBtn(
                              width: btnSize.width,
                              height: btnSize.height,
                              text: 'PROFILE',
                              onTap: () => onTapProfile(
                                context,
                              ),
                            ),
                          ),
                          Expanded(
                            child: ActionBtn(
                              width: btnSize.width,
                              height: btnSize.height,
                              text: 'SETTINGS',
                              onTap: () => onTapSettings(
                                context,
                              ),
                            ),
                          ),
                          Expanded(
                            child: ActionBtn(
                              width: btnSize.width,
                              height: btnSize.height,
                              text: 'LEADERBOARD',
                              fontSize: 16,
                              onTap: () => onTapLeaderBoard(
                                context,
                              ),
                            ),
                          ),
                          Expanded(
                            child: ActionBtn(
                              width: btnSize.width,
                              height: btnSize.height,
                              text: 'PRIVACY POLICY',
                              onTap: () => onTapPrivacyPolicy(
                                context,
                              ),
                            ),
                          ),
                          Expanded(
                            child: ActionBtn(
                              width: btnSize.width,
                              height: btnSize.height,
                              text: 'TERM\n OF USE',
                              onTap: () => ontTapTermOfUse(
                                context,
                              ),
                            ),
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
