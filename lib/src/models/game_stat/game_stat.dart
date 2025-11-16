import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rooster_game/src/utils/converters/uint_8_list_converter.dart';

part 'game_stat.freezed.dart';

part 'game_stat.g.dart';

@freezed
sealed class GameStat with _$GameStat {
  GameStat._();

  factory GameStat({
    @Default(0) int bestScore,
    @Default(0) int currentLevel,
  }) = _GameStat;

  factory GameStat.fromJson(Map<String, dynamic> json) =>
      _$GameStatFromJson(json);
}
