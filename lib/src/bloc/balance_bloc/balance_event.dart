part of 'balance_bloc.dart';

@freezed
class BalanceEvent with _$BalanceEvent {
  const factory BalanceEvent.started() = _Started;
}
