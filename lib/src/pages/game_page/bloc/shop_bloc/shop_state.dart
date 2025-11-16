part of 'shop_bloc.dart';

@freezed
sealed class ShopState with _$ShopState {
  const factory ShopState({
    required Shop shop,
  }) = _ShopState;
}
