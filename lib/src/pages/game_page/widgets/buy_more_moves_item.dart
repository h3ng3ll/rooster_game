import 'package:flutter/material.dart';
import 'package:rooster_game/src/pages/game_page/widgets/transparent_container.dart';


class BuyMoreMovesItem extends StatelessWidget {
  final int count;

  final VoidCallback? onTap;

  const BuyMoreMovesItem({
    super.key,
    required this.count,

    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
              '+$count Moves',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
