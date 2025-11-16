import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rooster_game/src/pages/splash_page/overlay/flash_overlay.dart';
import 'package:rooster_game/src/pages/splash_page/widgets/build_animated_loading_bar.dart';
import 'package:rooster_game/src/resourses/colors/app_colors.dart';
import 'package:rooster_game/src/routes/app_routes_paths.dart';
import 'package:rooster_game/src/widgets/build_rooster.dart';
import 'package:rooster_game/src/widgets/wall_in_flame_bg_widget.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  void onLoadEnd(BuildContext context) {
    final overlay = Overlay.of(context);
    final entry = OverlayEntry(
      builder: (_) => FlashOverlay(
        duration: Duration(
          milliseconds: 300,
        ),
        color: AppColors.white.value,

      ),
    );

    overlay.insert(entry);

    Future.delayed(
      const Duration(
        milliseconds: 300,
      ),
      () {
        if (!context.mounted) return;
        context.go(
          AppRoutesPaths.homeRoute,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return WallInFlameBgWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Align(
              alignment: Alignment(0.0 , 0.9),
              // bottom: 80.0,
              // right: 0,
              // left: 0,
              child: BuildRooster(

                width: 270.0,
                height: 440.0,
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: BuildAnimatedLoadingBar(
                onLoadEnd: () => onLoadEnd(
                  context,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
