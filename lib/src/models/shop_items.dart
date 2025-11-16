import 'package:rooster_game/src/models/shop_item/shop_item.dart';

abstract class ShopItems {
  static List<ShopItem> items = [
    ShopItem(
      count: 3,
      name: 'Moves',
      price: 120,
      value: EShopItemValue.addAttempts,
    ),
  ];

  static ShopItem byValue(
    EShopItemValue value,
  ) => items.firstWhere(
    (e) => e.value == value,
  );
}
