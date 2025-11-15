import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../widgets/padding/horizontal_padding.dart';

class GameFieldBg extends StatelessWidget {
  final Widget child;

  const GameFieldBg({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            Assets.images.gameFieldBg.path,
          ),
        ),
      ),
      child: SafeArea(
        child: HorizontalPadding(
          child: child,
        ),
      ),
    );
  }
}
