import 'package:flutter/material.dart';
import 'package:rooster_game/src/widgets/action_btn.dart';
import 'package:rooster_game/src/widgets/build_rooster.dart';
import 'package:rooster_game/src/widgets/custom_app_bar.dart';
import 'package:rooster_game/src/widgets/nav_btn/widets/menu_nav_btn.dart';

import '../../widgets/nav_btn/widets/info_nav_btn.dart';
import '../../widgets/wall_in_flame_bg_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void onTapInfo() {}

  void onTapMenu() {}

  void onTapPlay() {}

  @override
  Widget build(BuildContext context) {
    return WallInFlameBgWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomAppBar(
          actions: [
            InfoNavBtn(
              onTap: onTapInfo,
            ),
            Spacer(),
            MenuNavBtn(
              onTap: onTapMenu,
            ),
          ],
        ),
        body: Stack(
          children: [
            Positioned(
              bottom: 80.0,
              right: 0,
              left: 0,
              child: BuildRooster(
                width: 100.0,
                height: 620.0,
              ),
            ),
            Align(
              alignment: Alignment(
                0.0,
                0.9,
              ),
              child: ActionBtn(
                onTap: onTapPlay,
                width: 290.0,
                height: 140.0,
                text: 'PLAY',
                fontSize: 60,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
