import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:rooster_game/src/pages/game_page/bloc/shop_bloc/shop_bloc.dart';
import 'package:rooster_game/src/pages/game_page/game_page.dart';
import 'package:rooster_game/src/pages/home_page/widgets/build_coin_balance.dart';
import 'package:rooster_game/src/routes/app_routes_paths.dart';
import 'package:rooster_game/src/widgets/nav_btn/nav_btn.dart';
import 'package:rooster_game/src/widgets/nav_btn/widets/back_nav_btn.dart';

import '../../bloc/game_stat_bloc/game_stat_bloc.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/wall_in_flame_bg_widget.dart';

class ChangeLevelPage extends StatelessWidget {
  const ChangeLevelPage({super.key});

  void onTapBack(BuildContext context) {
    context.pop();
  }

  void onTapLevel(BuildContext context, int level) {
    context.pushNamed(
      AppRoutesPaths.gameRoute,
      extra: GamePageArgs(
        level: level,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShopBloc, ShopState>(
      builder: (context, state) {
        final stat = context.watch<GameStatBloc>();
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
                      final isLocked = stat.state.gameStat.currentLevel > index;
                      if (isLocked) {
                        return buildElement(
                          onTap: () => onTapLevel(
                            context,
                            index + 1,
                          ),
                          text: (index + 1).toString(),
                        );
                      }
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(
                          25.0,
                        ),
                        child: ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            Colors.grey,
                            BlendMode.saturation,
                          ),
                          child: buildElement(
                            text: (index + 1).toString(),
                          ),
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

  Widget buildElement({
    VoidCallback? onTap,
    required String text,
  }) {
    return NavBtn(
      onTap: onTap,
      padding: EdgeInsets.all(
        25.0,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 28.0,
          ),
        ),
      ),
    );
  }
}
