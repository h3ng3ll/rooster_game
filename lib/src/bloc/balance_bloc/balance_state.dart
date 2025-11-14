part of 'balance_bloc.dart';

@freezed
sealed class BalanceState with _$BalanceState {
  const factory BalanceState({
    @Default(0) int balance,
  }) = _BalanceState;
}
