import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rooster_game/src/widgets/content_container.dart';
import 'package:rooster_game/src/widgets/nav_btn/widets/back_nav_btn.dart';
import 'package:rooster_game/src/widgets/wall_in_flame_bg_widget.dart';

import '../../widgets/custom_app_bar.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  void onTapBack() {}

  @override
  Widget build(BuildContext context) {
    return WallInFlameBgWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomAppBar(
          actions: [
            BackNavBtn(
              onTap: onTapBack,
            ),
            Spacer(),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Gap(50.0),
            Expanded(
              child: ContentContainer(
                child: Column(
                  children: [
                    Text(
                      'HOW TO PLAY',
                      style: TextStyle(
                        fontSize: 28.0
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
