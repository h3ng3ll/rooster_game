// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_stat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameStat _$GameStatFromJson(Map<String, dynamic> json) => _GameStat(
  bestScore: (json['bestScore'] as num?)?.toInt() ?? 0,
  currentLevel: (json['currentLevel'] as num?)?.toInt() ?? 1,
);

Map<String, dynamic> _$GameStatToJson(_GameStat instance) => <String, dynamic>{
  'bestScore': instance.bestScore,
  'currentLevel': instance.currentLevel,
};
