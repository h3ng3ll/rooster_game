part of 'game_bloc.dart';

@freezed
sealed class GameState with _$GameState {
  const factory GameState({
    required GameConfig config,
    @Default(0) int score,
    @Default(1) int level,
    @Default(0) int tries,
    Egg? selectedEgg,
  }) = _GameState;
}
