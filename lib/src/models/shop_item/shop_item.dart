import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_item.freezed.dart';

part 'shop_item.g.dart';

enum EShopItemValue {
  addAttempts,
}

@freezed
sealed class ShopItem with _$ShopItem {
  ShopItem._();

  factory ShopItem({
    /// count of this item
    @Default(0) int count,

    ///  name of this item
    @Default('') String name,

    /// cost for item in whole include all [count]
    @Default(0) int price,

    required EShopItemValue value,
  }) = _ShopItem;

  factory ShopItem.fromJson(Map<String, dynamic> json) =>
      _$ShopItemFromJson(json);
}
