import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rooster_game/src/resourses/colors/app_colors.dart';

import '../../../widgets/action_btn.dart';

class PausedDialog extends StatelessWidget {
  final int score;
  final VoidCallback onTapHome;
  final VoidCallback onTapRestart;

  const PausedDialog({
    super.key,
    required this.score,
    required this.onTapHome,
    required this.onTapRestart,
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
              'PAUSED',
              style: TextStyle(fontSize: 30.0),
            ),
            Gap(60.0),
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
                Gap(10.0),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                    onTapRestart();
                  },
                  child: Text(
                    'RESTART',
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
                /// resume game
                Navigator.of(context).pop();
              },
              width: 290.0,
              height: 140.0,
              text: 'PLAY',
              fontSize: 40,
            ),
          ],
        ),
      ),
    );
  }
}
