part of 'game_stat_bloc.dart';

@freezed
class GameStatEvent with _$GameStatEvent {
  const factory GameStatEvent.updateBestScore({
    required int score,
  }) = _UpdateBestScore;

  const factory GameStatEvent.unlockNextLevel() = _UnlockNextLevel;

  const factory GameStatEvent.loadStats() = _LoadStats;
}
