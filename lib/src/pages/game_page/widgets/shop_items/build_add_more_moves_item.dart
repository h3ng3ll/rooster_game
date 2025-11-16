import 'package:flutter/material.dart';
import 'package:rooster_game/src/pages/game_page/widgets/transparent_container.dart';

class BuildAddMoreMovesItem extends StatelessWidget {
  final int count;
  final VoidCallback onTap;

  const BuildAddMoreMovesItem({
    super.key,
    required this.onTap,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: onTap,
          child: TransparentContainer(
            // padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.swap_horiz,
                  color: Colors.white,
                  size: 32,
                ),
                const SizedBox(width: 8),

                // +3 MOVES
                Text(
                  '+3 Moves',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        Text(
          'x$count ',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
