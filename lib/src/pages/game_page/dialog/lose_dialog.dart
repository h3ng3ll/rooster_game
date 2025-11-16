import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rooster_game/src/pages/game_page/widgets/green_container.dart';
import 'package:rooster_game/src/resourses/colors/app_colors.dart';

import '../../../widgets/action_btn.dart';

class LoseDialog extends StatelessWidget {
  final int score;
  final int best;
  final VoidCallback onTapHome;
  final VoidCallback onTapTryAgain;

  const LoseDialog({
    super.key,
    required this.score,
    required this.best,
    required this.onTapHome,
    required this.onTapTryAgain,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'YOU LOSE!',
              style: TextStyle(fontSize: 30.0),
            ),
            GreenContainer(
              width: 280.0,
              child: Text(
                'Score ${score.toString().padLeft(4, '0')}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Gap(10.0),
            GreenContainer(
              width: 280.0,
              child: Text(
                'BEST ${best.toString().padLeft(4, '0')}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Gap(10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                    onTapHome();
                  },
                  child: Text(
                    'HOME',
                    style: TextStyle(
                      fontSize: 20.0,
                      decoration: TextDecoration.underline,
                      decorationColor: AppColors.white.value,
                    ),
                  ),
                ),
              ],
            ),
            Gap(60.0),
            ActionBtn(
              onTap: () {
                Navigator.of(context).pop();
                onTapTryAgain();
              },
              width: 290.0,
              height: 140.0,
              text: 'TRY\nAGAIN',
              fontSize: 40,
            ),
          ],
        ),
      ),
    );
  }
}
