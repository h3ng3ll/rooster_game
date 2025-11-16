import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:rooster_game/src/pages/settings_page/bloc/settings_bloc/settings_bloc.dart';
import 'package:rooster_game/src/pages/settings_page/bloc/widgets/settings_item.dart';

import '../../widgets/action_btn.dart';
import '../../widgets/content_container.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/nav_btn/widets/back_nav_btn.dart';
import '../../widgets/wall_in_flame_bg_widget.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool soundStatus = false;
  bool notificationStatus = false;
  bool vibrationStatus = false;

  @override
  void initState() {
    super.initState();
    final state = context.read<SettingsBloc>().state;

    soundStatus = state.settings.soundStatus;
    notificationStatus = state.settings.notificationStatus;
    vibrationStatus = state.settings.vibrationStatus;
  }

  void onTapBack(BuildContext context) {
    Navigator.of(context).pop();
  }

  void onToggleSound(BuildContext context) {
    soundStatus = !soundStatus;
    setState(() {});
  }

  void onToggleNotification(BuildContext context) {
    notificationStatus = !notificationStatus;
    setState(() {});
  }

  void onToggleVibration(BuildContext context) {
    vibrationStatus = !vibrationStatus;
    setState(() {});
  }

  void onSave(BuildContext context) {
    context.read<SettingsBloc>().add(
      SettingsEvent.update(
        soundStatus: soundStatus,
        notificationStatus: notificationStatus,
        vibrationStatus: vibrationStatus,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
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
            body: Center(
              child: ContentContainer(
                padding: EdgeInsets.all(
                  32.0,
                ),
                // width: 320,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 20,
                  children: [
                    Text(
                      'SETTINGS',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 28.0),
                    ),
                    SettingsItem(
                      text: 'SOUND',
                      value: soundStatus,
                      onTap: () => onToggleSound(
                        context,
                      ),
                    ),
                    SettingsItem(
                      text: 'NOTIFICATION',
                      value: notificationStatus,
                      onTap: () => onToggleNotification(
                        context,
                      ),
                    ),
                    SettingsItem(
                      text: 'VIBRATION',
                      value: vibrationStatus,
                      onTap: () => onToggleVibration(
                        context,
                      ),
                    ),
                    Gap(10.0),
                    ActionBtn(
                      onTap: () => onSave(
                        context,
                      ),
                      width: 290.0,
                      height: 140.0,
                      text: 'SAVE',
                      fontSize: 60,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
