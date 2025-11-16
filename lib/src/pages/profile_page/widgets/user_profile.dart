import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rooster_game/src/resourses/colors/app_colors.dart';
import 'package:rooster_game/src/widgets/nav_btn/nav_btn.dart';

import '../../../../gen/assets.gen.dart';

class UserProfile extends StatelessWidget {
  final VoidCallback? onPickImage;
  final Uint8List? image;
  final bool enabledIconBtn;
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  const UserProfile({
    super.key,
     this.onPickImage,
    this.image,
    this.height,
    this.width,
    this.padding,
    this.enabledIconBtn = true,
  });

  @override
  Widget build(BuildContext context) {
    return NavBtn(
      width: width  ?? 200,
      height: height ??  200,
      onTap: onPickImage,
      padding: padding ?? EdgeInsets.all(
        25.0,
      ),
      // child: Container(),
      child: image != null
          ? ClipRRect(
              borderRadius: BorderRadius.circular(
                12.0,
              ),
              child: Image.memory(
                image!,
                fit: BoxFit.cover,
              ),
            )
          : enabledIconBtn
          ? buildEditIcon()
          : Container(),
    );
  }

  Widget buildEditIcon() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.all(
          5.0,
        ),
        decoration: BoxDecoration(
          color: AppColors.darkPastelGreen.value,
          borderRadius: BorderRadius.circular(
            5.0,
          ),
        ),
        width: 27.0,
        height: 27.0,
        child: SvgPicture.asset(

          Assets.icons.edit,
        ),
      ),
    );
  }
}
