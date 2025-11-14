part of 'settings_bloc.dart';

enum SettingsStatus {
  initial,
  loading,
  failed,
}

@freezed
sealed class SettingsState with _$SettingsState {
  factory SettingsState({
    Settings? settings,
    @Default(SettingsStatus.loading) SettingsStatus status,
    @Default('') String errorMessage,
  }) = _SettingsState;
}
