import 'package:flutter/material.dart';

class RemainTries extends StatelessWidget {
  final int moves;

  const RemainTries({
    super.key,
    required this.moves,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(Icons.swap_horiz, color: Colors.white),
          SizedBox(width: 8),
          Text(
            '$moves',
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
