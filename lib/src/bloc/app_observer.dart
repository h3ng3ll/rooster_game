import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

/// Observer for debug mode
class AppObserver extends BlocObserver {
  static AppObserver? _singleton;

  AppObserver._();

  /// Access to singleton instance
  factory AppObserver.instance() => _singleton ??= AppObserver._();

  @override
  void onCreate(BlocBase<dynamic> bloc) {
    super.onCreate(bloc);
    log('[Create] $bloc');
  }

  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    super.onEvent(bloc, event);
    log('[Event] in $bloc: $event');
  }

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log(
      '[Change] state in $bloc '
          'from ${change.currentState} -> ${change.nextState}',
    );
  }

  @override
  void onTransition(
      Bloc<dynamic, dynamic> bloc,
      Transition<dynamic, dynamic> transition,
      ) {
    super.onTransition(bloc, transition);
    log(
      '[Transition] in $bloc '
          'from ${transition.currentState} -> ${transition.nextState}',
    );
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    super.onClose(bloc);
    log('[Close] $bloc');
  }

  @override
  void onError(
      BlocBase<dynamic> bloc,
      Object error,
      StackTrace stackTrace,
      ) {
    super.onError(
      bloc,
      error,
      stackTrace,
    );
    log(
      'Error in $bloc: $error\nStacktrace: $stackTrace',
    );
  }
}
