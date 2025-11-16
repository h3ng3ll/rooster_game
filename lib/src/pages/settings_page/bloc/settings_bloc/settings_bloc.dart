import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rooster_game/src/databases/shared_prefs_database.dart';
import 'package:rooster_game/src/services/game_audio_service.dart';

import '../../../../models/settings/settings.dart';

part 'settings_event.dart';

part 'settings_state.dart';

part 'settings_bloc.freezed.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final SharedPrefsDatabase _sharedPrefsDatabase = SharedPrefsDatabase.instance;

  final GameAudioService _gameAudioService = GameAudioService.instance;

  final _key = 'settings2';

  SettingsBloc()
    : super(
        SettingsState(
          settings: Settings(),
        ),
      ) {
    on<_Fetch>(_fetch);
    on<_Update>(_update);
  }

  void _fetch(event, emit) async {
    final value = await _sharedPrefsDatabase.getValue(
      _key,
    );
    if (value == null) return;
    final settings = Settings.fromJson(
      jsonDecode(
        value,
      ),
    );
    emit(
      state.copyWith(
        settings: settings,
      ),
    );
    _processSoundSettings();
  }

  void _processSoundSettings() {
    state.settings.soundStatus
        ? _gameAudioService.playBackgroundMusic()
        : _gameAudioService.pause();
  }

  void _update(_Update event, emit) async {
    emit(
      state.copyWith(
        settings: state.settings.copyWith(
          soundStatus: event.soundStatus,
          vibrationStatus: event.vibrationStatus,
          notificationStatus: event.notificationStatus,
        ),
      ),
    );
    _processSoundSettings();


    final data = jsonEncode(
      state.settings.toJson(),
    );
    await _sharedPrefsDatabase.setValue(
      _key,
      data,
    );
  }
}
