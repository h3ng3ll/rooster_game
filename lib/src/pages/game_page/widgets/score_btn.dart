import 'package:flutter/material.dart';
import 'package:rooster_game/src/pages/game_page/widgets/transparent_container.dart';

class ScoreBtn extends StatelessWidget {
  final int score;
  final int goal;

  const ScoreBtn({
    super.key,
    required this.score,
    required this.goal,
  });

  @override
  Widget build(BuildContext context) {
    return TransparentContainer(
      child: Row(
        children: [
          Icon(Icons.star, color: Colors.amber),
          SizedBox(width: 8),
          Text(
            '$score/$goal',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
