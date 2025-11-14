import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../widgets/content_container.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/nav_btn/widets/back_nav_btn.dart';
import '../../widgets/wall_in_flame_bg_widget.dart';

class TermOfUsePage extends StatelessWidget {
  const TermOfUsePage({super.key});

  void onTapBack(BuildContext context) {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return WallInFlameBgWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomAppBar(
          actions: [
            BackNavBtn(
              onTap: () => onTapBack(
                context,
              ),
            ),
            Spacer(),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Gap(50.0),
            Expanded(
              child: ContentContainer(
                child: Column(
                  children: [
                    Text(
                      'TERM OF USE',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 28.0),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
