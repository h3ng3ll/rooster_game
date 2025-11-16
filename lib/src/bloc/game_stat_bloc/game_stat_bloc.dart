import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rooster_game/src/services/local_notification_service.dart';

import '../../databases/shared_prefs_database.dart';
import '../../models/game_stat/game_stat.dart';

part 'game_stat_event.dart';

part 'game_stat_state.dart';

part 'game_stat_bloc.freezed.dart';

class GameStatBloc extends Bloc<GameStatEvent, GameStatState> {
  final SharedPrefsDatabase _sharedPrefsDatabase = SharedPrefsDatabase.instance;
  final LocalNotificationService _localNotificationService =
      LocalNotificationService.instance;
  final _key = 'gameStat3';

  GameStatBloc()
    : super(
        GameStatState(
          gameStat: GameStat(),
        ),
      ) {
    on<_UpdateBestScore>(_updateBestScore);
    on<_UnlockNextLevel>(_unlockNextLevel);
    on<_LoadStats>(_loadStats);
  }

  void _update() {
    final gameStat = state.gameStat;
    final data = jsonEncode(
      gameStat.toJson(),
    );
    _sharedPrefsDatabase.setValue(
      _key,
      data,
    );
  }

  void _updateBestScore(_UpdateBestScore event, emit) {
    emit(
      state.copyWith(
        gameStat: state.gameStat.copyWith(
          bestScore: event.score,
        ),
      ),
    );
    _localNotificationService.sendNotification(
      'Game art',
      'Congratulation. You\'ve got a new score ${event.score} ',
    );
    _update();
  }

  void _unlockNextLevel(_UnlockNextLevel event, emit) {
    emit(
      state.copyWith(
        gameStat: state.gameStat.copyWith(
          currentLevel: state.gameStat.currentLevel + 1,
        ),
      ),
    );
    _update();
  }

  void _loadStats(_LoadStats event, emit) async {
    final value = await _sharedPrefsDatabase.getValue(
      _key,
    );
    if (value == null) return;

    final gameStat = GameStat.fromJson(
      jsonDecode(value),
    );

    emit(
      state.copyWith(
        gameStat: gameStat,
      ),
    );
  }
}
