import 'package:flutter/material.dart';
import 'package:rooster_game/src/widgets/padding/horizontal_padding.dart';

import '../../gen/assets.gen.dart';

class WallInFlameBgWidget extends StatefulWidget {
  final Widget child;

  const WallInFlameBgWidget({
    super.key,
    required this.child,
  });

  @override
  State<WallInFlameBgWidget> createState() => _WallInFlameBgWidgetState();
}

class _WallInFlameBgWidgetState extends State<WallInFlameBgWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 700),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            Assets.images.wallInFlame.path,
          ),
        ),
      ),
      child: SafeArea(
        child: HorizontalPadding(
          child: widget.child,
        ),
      ),
    );
  }
}
