// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ShopItem _$ShopItemFromJson(Map<String, dynamic> json) => _ShopItem(
  count: (json['count'] as num?)?.toInt() ?? 0,
  name: json['name'] as String? ?? '',
  price: (json['price'] as num?)?.toInt() ?? 0,
  value: $enumDecode(_$EShopItemValueEnumMap, json['value']),
);

Map<String, dynamic> _$ShopItemToJson(_ShopItem instance) => <String, dynamic>{
  'count': instance.count,
  'name': instance.name,
  'price': instance.price,
  'value': _$EShopItemValueEnumMap[instance.value]!,
};

const _$EShopItemValueEnumMap = {EShopItemValue.addAttempts: 'addAttempts'};
