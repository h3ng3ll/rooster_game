
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_stat.freezed.dart';

part 'game_stat.g.dart';

@freezed
sealed class GameStat with _$GameStat {
  GameStat._();

  factory GameStat({
    @Default(0) int bestScore,
    @Default(1) int currentLevel,
  }) = _GameStat;

  factory GameStat.fromJson(Map<String, dynamic> json) =>
      _$GameStatFromJson(json);
}
