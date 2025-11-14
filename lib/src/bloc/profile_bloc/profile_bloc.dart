import 'dart:convert';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rooster_game/src/databases/shared_prefs_database.dart';
import 'package:rooster_game/src/models/profile/profile.dart';

part 'profile_event.dart';

part 'profile_state.dart';

part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final SharedPrefsDatabase _sharedPrefsDatabase = SharedPrefsDatabase.instance;
  final _key = 'profile';

  ProfileBloc() : super(ProfileState(profile: Profile())) {
    on<_Load>(_load);
    on<_Save>(_save);
  }

  void _load(event, emit) async {
    final value = await _sharedPrefsDatabase.getValue(
      _key,
    );
    if (value == null) return;
    final profile = Profile.fromJson(
      jsonDecode(
        value,
      ),
    );
    emit(
      state.copyWith(
        profile: profile,
      ),
    );
  }

  Future<void> _save(event, emit) async {
    emit(
      state.copyWith(
        profile: state.profile.copyWith(
          avatar: event.avatar ?? state.profile.avatar,
          username: event.username ?? state.profile.username,
          email: event.email ?? state.profile.email,
        ),
      ),
    );
    await _sharedPrefsDatabase.setValue(
      _key,
      jsonEncode(
        state.profile.toJson(),
      ),
    );
  }
}
