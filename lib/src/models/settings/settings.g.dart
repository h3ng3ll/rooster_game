// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Settings _$SettingsFromJson(Map<String, dynamic> json) => _Settings(
  soundStatus: json['soundStatus'] as bool? ?? true,
  notificationStatus: json['notificationStatus'] as bool? ?? true,
  vibrationStatus: json['vibrationStatus'] as bool? ?? true,
);

Map<String, dynamic> _$SettingsToJson(_Settings instance) => <String, dynamic>{
  'soundStatus': instance.soundStatus,
  'notificationStatus': instance.notificationStatus,
  'vibrationStatus': instance.vibrationStatus,
};
