import 'package:flutter/material.dart';
import 'package:rooster_game/src/widgets/custom_switch.dart';

class SettingsItem extends StatelessWidget {
  final String text;
  final bool value;
  final VoidCallback onTap;

  const SettingsItem({
    super.key,
    required this.text,
    required this.value,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        Spacer(),
        CustomSwitch(
          width: 60,
          height: 30,
          value: value,
          onChanged: (_) => onTap(),
        ),
      ],
    );
  }
}
