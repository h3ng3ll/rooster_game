part of 'game_bloc.dart';

@freezed
class GameEvent with _$GameEvent {
  const factory GameEvent.init() = _Init;

  const factory GameEvent.decrementMove() = _DecrementMove;

  const factory GameEvent.addScore({
    required int score,
  }) = _AddScore;

  const factory GameEvent.selectEgg({
    required Egg egg,
  }) = _SelectEgg;

  const factory GameEvent.unselectEgg() = _UnselectEgg;

  const factory GameEvent.nextLevel() = _NextLevel;

  const factory GameEvent.addTries({
    required int count,
  }) = _AddTries;
}
