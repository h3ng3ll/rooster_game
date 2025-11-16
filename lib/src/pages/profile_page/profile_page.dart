import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:rooster_game/src/pages/profile_page/widgets/user_profile.dart';
import 'package:rooster_game/src/services/ui_overlay_service.dart';
import 'package:rooster_game/src/widgets/action_btn.dart';
import 'package:rooster_game/src/widgets/custom_app_bar.dart';
import 'package:rooster_game/src/widgets/custom_text_field.dart';
import 'package:rooster_game/src/widgets/nav_btn/widets/back_nav_btn.dart';

import '../../bloc/profile_bloc/profile_bloc.dart';
import '../../widgets/content_container.dart';
import '../../widgets/wall_in_flame_bg_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Uint8List? image;
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final UIOverlayService _uIOverlayService = UIOverlayService.instance;


  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    super.dispose();
  }

  void onTapBack() {
    context.pop();
  }

  Future<void> onPickImage() async {
    final image = await _uIOverlayService.pickImage(
      context,
    );
    if (image == null) return;
    this.image = image.readAsBytesSync();
    setState(() {});
  }

  void onSave() {
    context.read<ProfileBloc>().add(
      ProfileEvent.save(
        avatar: image,
        username: usernameController.text,
        email: emailController.text,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {

        if (usernameController.text != state.profile.username) {
          usernameController.text = state.profile.username;
        }
        if (emailController.text != state.profile.email) {
          emailController.text = state.profile.email;
        }
        image ??= state.profile.avatar;

        return WallInFlameBgWidget(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: CustomAppBar(
              actions: [
                BackNavBtn(
                  onTap: onTapBack,
                ),
                Spacer(),
              ],
            ),
            body: Column(
              children: [
                Gap(40.0),
                Expanded(
                  child: ContentContainer(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'PROFILE',
                          style: TextStyle(
                            fontSize: 28.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Gap(50.0),
                        Center(
                          child: UserProfile(
                            image: image ?? state.profile.avatar,
                            onPickImage: onPickImage,
                          ),
                        ),
                        Gap(20.0),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 25.0,
                          ),
                          child: Column(
                            spacing: 20.0,
                            children: [
                              CustomTextField(
                                controller: usernameController,
                                hintText: 'USERNAME',
                              ),
                              CustomTextField(
                                controller: emailController,
                                hintText: 'EMAIL',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Gap(10.0),
                ActionBtn(
                  onTap: onSave,
                  width: 290.0,
                  height: 140.0,
                  text: 'SAVE',
                  fontSize: 60,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
