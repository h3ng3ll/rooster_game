import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../models/settings/settings.dart';

part 'settings_event.dart';

part 'settings_state.dart';

part 'settings_bloc.freezed.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc()
    : super(
        SettingsState(
          settings: Settings(),
        ),
      ) {
    on<_ToggleNotification>(_toggleNotification);
    on<_ToggleSound>(_toggleSound);
    on<_ToggleVibration>(_toggleVibration);
    on<_Fetch>(_fetch);
    on<_Update>(_update);
  }

  void _toggleNotification(event, emit) async {
    emit(
      state.copyWith(
        settings: state.settings!.copyWith(
          notificationStatus: !state.settings!.notificationStatus,
        ),
      ),
    );
  }

  void _toggleSound(event, emit) async {
    emit(
      state.copyWith(
        settings: state.settings!.copyWith(
          soundStatus: !state.settings!.soundStatus,
        ),
      ),
    );
  }

  void _toggleVibration(event, emit) async {
    emit(
      state.copyWith(
        settings: state.settings!.copyWith(
          vibrationStatus: !state.settings!.vibrationStatus,
        ),
      ),
    );
  }

  void _fetch(event, emit) async {
    try {
      emit(
        state.copyWith(
          status: SettingsStatus.loading,
        ),
      );
      // final data = event.e;
      /// Todo:

      emit(
        state.copyWith(
          status: SettingsStatus.initial,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: SettingsStatus.failed,
          errorMessage: e.toString(),
        ),
      );
      rethrow;
    }
  }

  void _update(event, emit) async {
    try {
      emit(
        state.copyWith(
          status: SettingsStatus.loading,
        ),
      );
      // final data = event.e;
      /// Todo:

      emit(
        state.copyWith(
          status: SettingsStatus.initial,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: SettingsStatus.failed,
          errorMessage: e.toString(),
        ),
      );
      rethrow;
    }
  }
}
