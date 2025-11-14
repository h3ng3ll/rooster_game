import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rooster_game/src/widgets/nav_btn/nav_btn.dart';

import '../../../../gen/assets.gen.dart';

class BackNavBtn extends StatelessWidget {
  final VoidCallback onTap;
  final double? width;
  final double? height;

  const BackNavBtn({
    super.key,
    required this.onTap,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return NavBtn(
      padding: EdgeInsets.symmetric(
        vertical: 25.0,
      ),
      width: width ?? 80.0,
      height: height ?? 80.0,
      onTap: onTap,
      child: SvgPicture.asset(
        Assets.icons.arrowBack,
        width: 25.0,
        height: 25.0,
      ),
    );
  }
}
