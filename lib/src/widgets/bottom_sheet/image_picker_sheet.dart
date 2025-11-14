import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import '../../resourses/colors/app_colors.dart';

class ImagePickerSheet extends StatelessWidget {
  const ImagePickerSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final style = GoogleFonts.fredoka().copyWith(
      fontSize: 20.0,
      fontWeight: FontWeight.w900,
      letterSpacing: 0.0,
    );
    return Container(
      decoration: BoxDecoration(
        color: AppColors.darkCharcoal.value,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(
            12.0,
          ),
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Gap(40.0),
            Text(
              'PLEASE MAKE YOUR CHOICE',
              style: style.copyWith(
                color: AppColors.white.value,
              ),
            ),
            Gap(20.0),
            Divider(
              thickness: 1.0,
              color: AppColors.white.value.withValues(
                alpha: 0.3,
              ),
            ),
            Gap(30.0),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 45.0,
              ),
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 15.0,
                  horizontal: 25.0,
                ),
                decoration: BoxDecoration(
                  color: AppColors.white.value,
                  borderRadius: BorderRadius.circular(
                    17.0,
                  ),
                ),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () => Navigator.of(context).pop(
                        ImageSource.camera,
                      ),
                      child: Text(
                        'MAKE A PHOTO',
                        style: style.copyWith(
                          color: AppColors.black.value,
                        ),
                      ),
                    ),
                    Gap(10.0),
                    Divider(
                      thickness: 1.0,
                      color: AppColors.black.value,
                    ),
                    Gap(10.0),
                    InkWell(
                      onTap: () =>
                          Navigator.of(
                            context,
                          ).pop(
                            ImageSource.gallery,
                          ),
                      child: Text(
                        'MAKE A PHOTO',
                        style: style.copyWith(
                          color: AppColors.black.value,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Gap(25.0),
            InkWell(
              onTap: () => Navigator.of(
                context,
              ).pop(),
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 30.0,
                ),
                decoration: BoxDecoration(
                  color: AppColors.white.value,
                  borderRadius: BorderRadius.circular(
                    7.0,
                  ),
                ),
                child: Text(
                  'CANCEL',
                  style: style.copyWith(
                    color: AppColors.black.value,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
