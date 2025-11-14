import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings.freezed.dart';

part 'settings.g.dart';

@freezed
sealed class Settings with _$Settings {
  Settings._();

  factory Settings({
    @Default(true) bool soundStatus,
    @Default(true) bool notificationStatus,
    @Default(true) bool vibrationStatus,
  }) = _Settings;

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);
}
