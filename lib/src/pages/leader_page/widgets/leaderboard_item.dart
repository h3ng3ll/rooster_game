import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:rooster_game/src/pages/profile_page/widgets/user_profile.dart';
import 'package:rooster_game/src/resourses/colors/app_colors.dart';

class LeaderboardItem extends StatelessWidget {
  final String item;

  final Uint8List? image;
  final int score;
  final bool isCurrentUser;

  const LeaderboardItem({
    super.key,
    required this.item,
    this.image,
    required this.score,
    this.isCurrentUser = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        right: 15,
      ),
      decoration: BoxDecoration(
        color: AppColors.rosePink.value,
        borderRadius: BorderRadius.circular(
          12.0,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          UserProfile(
            width: 60.0,
            height: 60.0,
            image: image,
            padding: EdgeInsets.all(
              5.0,
            ),
            enabledIconBtn: false,
          ),
          Text(
            item,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.0,
              color: isCurrentUser ? AppColors.vividYellow.value : null,
            ),
          ),
          Text(
            score.toString().padLeft(
              4,
              '0',
            ),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.0,
              color: isCurrentUser ? AppColors.vividYellow.value : null,
            ),
          ),
        ],
      ),
    );
  }
}
