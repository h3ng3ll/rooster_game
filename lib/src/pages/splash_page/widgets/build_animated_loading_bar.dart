import 'package:flutter/material.dart';
import 'package:rooster_game/src/resourses/colors/app_colors.dart';
import 'package:rooster_game/src/widgets/stroke_text.dart';

class BuildAnimatedLoadingBar extends StatefulWidget {
  final VoidCallback onLoadEnd;

  const BuildAnimatedLoadingBar({
    super.key,
    required this.onLoadEnd,
  });

  @override
  State<BuildAnimatedLoadingBar> createState() =>
      _BuildAnimatedLoadingBarState();
}

class _BuildAnimatedLoadingBarState extends State<BuildAnimatedLoadingBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  final borderRadius = BorderRadius.circular(
    7.5,
  );

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(
            vsync: this,
            duration: Duration(
              seconds: 8,
            ),
          )
          ..forward()
          ..addListener(
            () {
              if (_controller.status == AnimationStatus.completed) {
                widget.onLoadEnd();
              }
              setState(() {});
            },
          );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget buildProgress() {
    return Container(
      height: 40.0,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        gradient: LinearGradient(
          colors: [
            AppColors.ferrariRed.value,
            AppColors.vividYellow.value,
          ],
        ),
      ),
    );
  }

  Widget buildUnfilledArea({
    required Widget child,
  }) {
    final flex = (_controller.value * 100).round();

    return Container(
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.heatWave.value,
            AppColors.vividYellow.value,
          ],
        ),
      ),
      padding: EdgeInsets.all(
        2.0,
      ),
      child: Container(
        // height: 40.0,
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: AppColors.white.value,
        ),
        child: Stack(
          children: [
            Row(
              children: [
                if (flex != 0)
                  Expanded(
                    flex: flex,
                    child: buildProgress(),
                  ),
                if (flex != 0)
                  Expanded(
                    flex: 100 - flex,
                    child: SizedBox(),
                  ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3.0),
              child: Center(
                child: child,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildUnfilledArea(
      child: StrokedText(
        '${(_controller.value * 100).toStringAsFixed(0)}%',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 24.0,
        ),
      ),
    );
  }
}
