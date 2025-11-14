import 'package:flutter/material.dart';
import 'package:rooster_game/src/pages/splash_page/widgets/build_animated_loading_bar.dart';
import 'package:rooster_game/src/widgets/build_rooster.dart';
import 'package:rooster_game/src/widgets/nav_btn/widets/info_nav_btn.dart';
import 'package:rooster_game/src/widgets/wall_in_flame_bg_widget.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  void onLoadEnd() {}

  @override
  Widget build(BuildContext context) {
    return WallInFlameBgWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: BuildRooster(
                width: 300.0,
                height: 760.0,
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: BuildAnimatedLoadingBar(
                onLoadEnd: onLoadEnd,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
