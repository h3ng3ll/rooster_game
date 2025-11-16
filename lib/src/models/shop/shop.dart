import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rooster_game/src/models/shop_item/shop_item.dart';

part 'shop.freezed.dart';

part 'shop.g.dart';

@freezed
sealed class Shop with _$Shop {
  Shop._();

  factory Shop({
    @Default(1000) int balance,
    @Default([]) List<ShopItem> items,
  }) = _Shop;

  factory Shop.fromJson(Map<String, dynamic> json) =>
      _$ShopFromJson(json);
}
