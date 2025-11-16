import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:rooster_game/src/widgets/content_container.dart';
import 'package:rooster_game/src/widgets/nav_btn/widets/back_nav_btn.dart';
import 'package:rooster_game/src/widgets/wall_in_flame_bg_widget.dart';

import '../../widgets/custom_app_bar.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

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
              onTap: () => onTapBack(
                context,
              ),
            ),
            Spacer(),
          ],
        ),
        body: ContentContainer(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'HOW TO PLAY',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(20),

                const Text(
                  '1. GAME BOARD',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  'The game board is a square grid filled with colored eggs. '
                  'Each cell contains one egg.',
                  style: TextStyle(fontSize: 16, height: 1.3),
                ),
                const Gap(16),

                const Text(
                  '2. SELECT & SWAP',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  'Tap an egg to select it. Tap a neighboring egg (up, down, left, right) '
                  'to swap them. If eggs are not neighbors, the selection changes.',
                  style: TextStyle(fontSize: 16, height: 1.3),
                ),
                const Gap(16),

                const Text(
                  '3. MATCHES',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  'If a swap creates a line of 3 or more eggs of the same color, '
                  'they disappear and you gain points.',
                  style: TextStyle(fontSize: 16, height: 1.3),
                ),
                const Gap(16),

                const Text(
                  '4. GRAVITY & REFILL',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  'Eggs above fall down to fill the empty spaces. '
                  'New eggs appear from above to refill the board. '
                  'If new matches appear, the process repeats.',
                  style: TextStyle(fontSize: 16, height: 1.3),
                ),
                const Gap(16),

                const Text(
                  '5. SCORE & MOVES',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  'You earn points for every matched egg. '
                  'Moves decrease with each successful match.',
                  style: TextStyle(fontSize: 16, height: 1.3),
                ),
                const Gap(16),

                const Text(
                  '6. NO STARTING MATCHES',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  'The board is generated without automatic matches at the beginning.',
                  style: TextStyle(fontSize: 16, height: 1.3),
                ),
                const Gap(16),

                const Text(
                  '7. NOTIFICATIONS',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  'When you set a new record score, the game sends a local notification.',
                  style: TextStyle(fontSize: 16, height: 1.3),
                ),
                const Gap(16),

                const Text(
                  '8. VIBRATION',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  'If vibration is enabled, the device vibrates when you make a match.',
                  style: TextStyle(fontSize: 16, height: 1.3),
                ),
                const Gap(32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
