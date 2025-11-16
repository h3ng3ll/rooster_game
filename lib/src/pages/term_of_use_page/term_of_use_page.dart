import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:rooster_game/src/widgets/content_container.dart';
import 'package:rooster_game/src/widgets/nav_btn/widets/back_nav_btn.dart';
import 'package:rooster_game/src/widgets/wall_in_flame_bg_widget.dart';
import '../../widgets/custom_app_bar.dart';

class TermsOfUsePage extends StatelessWidget {
  const TermsOfUsePage({super.key});

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
                        'TERMS OF USE',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Gap(20),

                      Text(
                        '1. GENERAL CONDITIONS',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'By using this game, you agree to follow these Terms of Use. '
                        'If you do not agree with any part of these terms, please stop using the game.',
                        style: TextStyle(fontSize: 16, height: 1.3),
                      ),
                      Gap(16),

                      Text(
                        '2. USER RESPONSIBILITIES',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'You agree to use the game fairly and avoid attempts to modify, hack, '
                        'or exploit the gameplay or score system in any way.',
                        style: TextStyle(fontSize: 16, height: 1.3),
                      ),
                      Gap(16),

                      Text(
                        '3. GAME CONTENT',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'All images, graphics, sounds, and gameplay elements are protected assets. '
                        'You may not copy or redistribute them without permission.',
                        style: TextStyle(fontSize: 16, height: 1.3),
                      ),
                      Gap(16),

                      Text(
                        '4. PRIVACY',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'The game stores basic progress data locally on your device. '
                        'No personal information is collected or transmitted.',
                        style: TextStyle(fontSize: 16, height: 1.3),
                      ),
                      Gap(16),

                      Text(
                        '5. LIMITATION OF LIABILITY',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'The game is provided “as is”. We are not responsible for any loss of progress, '
                        'device issues, or other problems that may occur while playing.',
                        style: TextStyle(fontSize: 16, height: 1.3),
                      ),
                      Gap(16),

                      Text(
                        '6. UPDATES & CHANGES',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'The Terms of Use may be updated occasionally. Continued use of the game '
                        'after updates means you accept the new terms.',
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
