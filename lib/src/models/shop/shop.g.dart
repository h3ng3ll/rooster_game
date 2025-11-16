// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Shop _$ShopFromJson(Map<String, dynamic> json) => _Shop(
  balance: (json['balance'] as num?)?.toInt() ?? 1000,
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => ShopItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$ShopToJson(_Shop instance) => <String, dynamic>{
  'balance': instance.balance,
  'items': instance.items,
};
