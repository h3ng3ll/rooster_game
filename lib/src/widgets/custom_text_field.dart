import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../gen/assets.gen.dart';
import '../resourses/colors/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Function(String)? onChanged;
  final TextEditingController controller;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.onChanged,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(
          12.5,
        ),
      ),
      child: TextField(
        maxLines: 1,
        maxLength: 20,
        controller: controller,
        // maxLengthEnforcement: MaxLengthEnforcement.none,
        style: GoogleFonts.rubikMonoOne().copyWith(
          color: AppColors.white.value,
          fontSize: 16.0,
        ),
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          counterText: '',
          hintText: hintText,
          fillColor: AppColors.rosePink.value,
          filled: true,
          isDense: false,
          contentPadding: EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 15.0,
          ),
          hintStyle: GoogleFonts.rubikMonoOne().copyWith(
            color: AppColors.white.value,
            fontSize: 16.0,
          ),

          border: InputBorder.none,
          suffixIcon: Padding(
            padding: EdgeInsetsGeometry.only(
              right: 12.0,
              top: 12.0,
              bottom: 12.0,
            ),
            child: SvgPicture.asset(
              Assets.icons.edit,
              width: 15.0,
              height: 15.0,
            ),
          ),
        ),
        onChanged: onChanged,
      ),
    );
  }
}
