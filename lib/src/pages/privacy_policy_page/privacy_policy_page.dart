import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:rooster_game/src/widgets/content_container.dart';
import 'package:rooster_game/src/widgets/nav_btn/widets/back_nav_btn.dart';
import 'package:rooster_game/src/widgets/wall_in_flame_bg_widget.dart';

import '../../widgets/custom_app_bar.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  void onTapBack(BuildContext context) {
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return WallInFlameBgWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomAppBar(
          actions: [
            BackNavBtn(
              onTap: () => onTapBack(context),
            ),
            Spacer(),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Gap(50.0),
            Expanded(
              child: ContentContainer(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'PRIVACY POLICY',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Gap(20),

                      Text(
                        '1. DATA WE COLLECT',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'This game does not collect personal information. '
                        'Only local gameplay data—such as your score, level progress, '
                        'and in-game settings—is stored directly on your device.',
                        style: TextStyle(fontSize: 16, height: 1.3),
                      ),
                      Gap(16),

                      Text(
                        '2. LOCAL STORAGE',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Information saved on your device is used only to maintain your game progress. '
                        'We do not transmit or share this data with any third party.',
                        style: TextStyle(fontSize: 16, height: 1.3),
                      ),
                      Gap(16),

                      Text(
                        '3. THIRD-PARTY SERVICES',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'The game does not use analytics, advertising networks, or any external services '
                        'that could track or identify you.',
                        style: TextStyle(fontSize: 16, height: 1.3),
                      ),
                      Gap(16),

                      Text(
                        '4. NOTIFICATIONS',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'If you enable notifications, the game may send simple achievement messages '
                        'or reminders. These notifications are generated locally and do not rely '
                        'on any cloud services.',
                        style: TextStyle(fontSize: 16, height: 1.3),
                      ),
                      Gap(16),

                      Text(
                        '5. CHILDREN\'S PRIVACY',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'The game is suitable for all ages and does not collect information that '
                        'could identify children or adults.',
                        style: TextStyle(fontSize: 16, height: 1.3),
                      ),
                      Gap(16),

                      Text(
                        '6. CHANGES TO THIS POLICY',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'We may update this Privacy Policy from time to time. '
                        'Any changes will be reflected in this section. '
                        'Continued use of the game means you accept the updated policy.',
                        style: TextStyle(fontSize: 16, height: 1.3),
                      ),
                      Gap(32),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
