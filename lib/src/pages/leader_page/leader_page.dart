import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rooster_game/src/bloc/game_stat_bloc/game_stat_bloc.dart';
import 'package:rooster_game/src/pages/leader_page/widgets/leaderboard_item.dart';

import '../../bloc/profile_bloc/profile_bloc.dart';
import '../../widgets/content_container.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/nav_btn/widets/back_nav_btn.dart';
import '../../widgets/wall_in_flame_bg_widget.dart';

class _Leader {
  final String name;
  final int score;
  final Uint8List? image;

  _Leader(
    this.name,
    this.score,
    this.image,
  );
}

class LeaderPage extends StatelessWidget {
  const LeaderPage({super.key});

  void onTapBack(BuildContext context) {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final profile = context.watch<ProfileBloc>().state.profile;

    final score = context.watch<GameStatBloc>().state.gameStat.bestScore;

    // Моковые данные
    final leaders = [
      _Leader('Alex', 1520, null),
      _Leader('Kate', 1200, null),
      _Leader('John', 980, null),
      _Leader('Vlad', 720, null),
      _Leader('Marta', 610, null),
    ];

    leaders.add(
      _Leader(
        profile.username,
        score,
        profile.avatar,
      ),
    );

    leaders.sort(
      (a, b) => b.score.compareTo(
        a.score,
      ),
    );

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
        body: Center(
          child: ContentContainer(
            padding: EdgeInsets.all(
              32.0,
            ),
            // width: 320,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: 20,
              children: [
                Text(
                  'LEADERBOARD',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28.0,
                  ),
                ),
                ...leaders.map((leader) {
                  return LeaderboardItem(
                    item: leader.name,
                    score: leader.score,
                    isCurrentUser: leader.name == profile.username,
                    image: leader.image,
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
