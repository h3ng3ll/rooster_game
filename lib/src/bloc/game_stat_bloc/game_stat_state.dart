part of 'game_stat_bloc.dart';

@freezed
sealed class GameStatState with _$GameStatState {
  const factory GameStatState({
    required GameStat gameStat,
  }) = _GameStatState;
}
