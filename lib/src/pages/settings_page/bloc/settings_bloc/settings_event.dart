part of 'settings_bloc.dart';

@freezed
sealed class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.toggleNotification() = _ToggleNotification;

  const factory SettingsEvent.toggleSound() = _ToggleSound;

  const factory SettingsEvent.toggleVibration() = _ToggleVibration;

  const factory SettingsEvent.update() = _Update;

  const factory SettingsEvent.fetch() = _Fetch;


}
