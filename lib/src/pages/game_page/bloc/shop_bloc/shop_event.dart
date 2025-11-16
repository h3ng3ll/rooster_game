part of 'shop_bloc.dart';

@freezed
sealed class ShopEvent with _$ShopEvent {
  const factory ShopEvent.buy({
    required ShopItem item,
  }) = _Buy;

  const factory ShopEvent.spent({
    required EShopItemValue value,
  }) = _Spent;

  const factory ShopEvent.load() = _Load;
}
