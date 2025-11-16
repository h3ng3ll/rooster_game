// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ShopItem {

/// count of this item
 int get count;///  name of this item
 String get name;/// cost for item in whole include all [count]
 int get price; EShopItemValue get value;
/// Create a copy of ShopItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShopItemCopyWith<ShopItem> get copyWith => _$ShopItemCopyWithImpl<ShopItem>(this as ShopItem, _$identity);

  /// Serializes this ShopItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShopItem&&(identical(other.count, count) || other.count == count)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,name,price,value);

@override
String toString() {
  return 'ShopItem(count: $count, name: $name, price: $price, value: $value)';
}


}

/// @nodoc
abstract mixin class $ShopItemCopyWith<$Res>  {
  factory $ShopItemCopyWith(ShopItem value, $Res Function(ShopItem) _then) = _$ShopItemCopyWithImpl;
@useResult
$Res call({
 int count, String name, int price, EShopItemValue value
});




}
/// @nodoc
class _$ShopItemCopyWithImpl<$Res>
    implements $ShopItemCopyWith<$Res> {
  _$ShopItemCopyWithImpl(this._self, this._then);

  final ShopItem _self;
  final $Res Function(ShopItem) _then;

/// Create a copy of ShopItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = null,Object? name = null,Object? price = null,Object? value = null,}) {
  return _then(_self.copyWith(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as EShopItemValue,
  ));
}

}


/// Adds pattern-matching-related methods to [ShopItem].
extension ShopItemPatterns on ShopItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShopItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShopItem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShopItem value)  $default,){
final _that = this;
switch (_that) {
case _ShopItem():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShopItem value)?  $default,){
final _that = this;
switch (_that) {
case _ShopItem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int count,  String name,  int price,  EShopItemValue value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShopItem() when $default != null:
return $default(_that.count,_that.name,_that.price,_that.value);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int count,  String name,  int price,  EShopItemValue value)  $default,) {final _that = this;
switch (_that) {
case _ShopItem():
return $default(_that.count,_that.name,_that.price,_that.value);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int count,  String name,  int price,  EShopItemValue value)?  $default,) {final _that = this;
switch (_that) {
case _ShopItem() when $default != null:
return $default(_that.count,_that.name,_that.price,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShopItem extends ShopItem {
   _ShopItem({this.count = 0, this.name = '', this.price = 0, required this.value}): super._();
  factory _ShopItem.fromJson(Map<String, dynamic> json) => _$ShopItemFromJson(json);

/// count of this item
@override@JsonKey() final  int count;
///  name of this item
@override@JsonKey() final  String name;
/// cost for item in whole include all [count]
@override@JsonKey() final  int price;
@override final  EShopItemValue value;

/// Create a copy of ShopItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShopItemCopyWith<_ShopItem> get copyWith => __$ShopItemCopyWithImpl<_ShopItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShopItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShopItem&&(identical(other.count, count) || other.count == count)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,name,price,value);

@override
String toString() {
  return 'ShopItem(count: $count, name: $name, price: $price, value: $value)';
}


}

/// @nodoc
abstract mixin class _$ShopItemCopyWith<$Res> implements $ShopItemCopyWith<$Res> {
  factory _$ShopItemCopyWith(_ShopItem value, $Res Function(_ShopItem) _then) = __$ShopItemCopyWithImpl;
@override @useResult
$Res call({
 int count, String name, int price, EShopItemValue value
});




}
/// @nodoc
class __$ShopItemCopyWithImpl<$Res>
    implements _$ShopItemCopyWith<$Res> {
  __$ShopItemCopyWithImpl(this._self, this._then);

  final _ShopItem _self;
  final $Res Function(_ShopItem) _then;

/// Create a copy of ShopItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = null,Object? name = null,Object? price = null,Object? value = null,}) {
  return _then(_ShopItem(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as EShopItemValue,
  ));
}


}

// dart format on
