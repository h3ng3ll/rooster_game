// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ShopEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShopEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ShopEvent()';
}


}

/// @nodoc
class $ShopEventCopyWith<$Res>  {
$ShopEventCopyWith(ShopEvent _, $Res Function(ShopEvent) __);
}


/// Adds pattern-matching-related methods to [ShopEvent].
extension ShopEventPatterns on ShopEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Buy value)?  buy,TResult Function( _Spent value)?  spent,TResult Function( _Load value)?  load,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Buy() when buy != null:
return buy(_that);case _Spent() when spent != null:
return spent(_that);case _Load() when load != null:
return load(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Buy value)  buy,required TResult Function( _Spent value)  spent,required TResult Function( _Load value)  load,}){
final _that = this;
switch (_that) {
case _Buy():
return buy(_that);case _Spent():
return spent(_that);case _Load():
return load(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Buy value)?  buy,TResult? Function( _Spent value)?  spent,TResult? Function( _Load value)?  load,}){
final _that = this;
switch (_that) {
case _Buy() when buy != null:
return buy(_that);case _Spent() when spent != null:
return spent(_that);case _Load() when load != null:
return load(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( ShopItem item)?  buy,TResult Function( EShopItemValue value)?  spent,TResult Function()?  load,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Buy() when buy != null:
return buy(_that.item);case _Spent() when spent != null:
return spent(_that.value);case _Load() when load != null:
return load();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( ShopItem item)  buy,required TResult Function( EShopItemValue value)  spent,required TResult Function()  load,}) {final _that = this;
switch (_that) {
case _Buy():
return buy(_that.item);case _Spent():
return spent(_that.value);case _Load():
return load();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( ShopItem item)?  buy,TResult? Function( EShopItemValue value)?  spent,TResult? Function()?  load,}) {final _that = this;
switch (_that) {
case _Buy() when buy != null:
return buy(_that.item);case _Spent() when spent != null:
return spent(_that.value);case _Load() when load != null:
return load();case _:
  return null;

}
}

}

/// @nodoc


class _Buy implements ShopEvent {
  const _Buy({required this.item});
  

 final  ShopItem item;

/// Create a copy of ShopEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BuyCopyWith<_Buy> get copyWith => __$BuyCopyWithImpl<_Buy>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Buy&&(identical(other.item, item) || other.item == item));
}


@override
int get hashCode => Object.hash(runtimeType,item);

@override
String toString() {
  return 'ShopEvent.buy(item: $item)';
}


}

/// @nodoc
abstract mixin class _$BuyCopyWith<$Res> implements $ShopEventCopyWith<$Res> {
  factory _$BuyCopyWith(_Buy value, $Res Function(_Buy) _then) = __$BuyCopyWithImpl;
@useResult
$Res call({
 ShopItem item
});


$ShopItemCopyWith<$Res> get item;

}
/// @nodoc
class __$BuyCopyWithImpl<$Res>
    implements _$BuyCopyWith<$Res> {
  __$BuyCopyWithImpl(this._self, this._then);

  final _Buy _self;
  final $Res Function(_Buy) _then;

/// Create a copy of ShopEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? item = null,}) {
  return _then(_Buy(
item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as ShopItem,
  ));
}

/// Create a copy of ShopEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShopItemCopyWith<$Res> get item {
  
  return $ShopItemCopyWith<$Res>(_self.item, (value) {
    return _then(_self.copyWith(item: value));
  });
}
}

/// @nodoc


class _Spent implements ShopEvent {
  const _Spent({required this.value});
  

 final  EShopItemValue value;

/// Create a copy of ShopEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpentCopyWith<_Spent> get copyWith => __$SpentCopyWithImpl<_Spent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Spent&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'ShopEvent.spent(value: $value)';
}


}

/// @nodoc
abstract mixin class _$SpentCopyWith<$Res> implements $ShopEventCopyWith<$Res> {
  factory _$SpentCopyWith(_Spent value, $Res Function(_Spent) _then) = __$SpentCopyWithImpl;
@useResult
$Res call({
 EShopItemValue value
});




}
/// @nodoc
class __$SpentCopyWithImpl<$Res>
    implements _$SpentCopyWith<$Res> {
  __$SpentCopyWithImpl(this._self, this._then);

  final _Spent _self;
  final $Res Function(_Spent) _then;

/// Create a copy of ShopEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Spent(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as EShopItemValue,
  ));
}


}

/// @nodoc


class _Load implements ShopEvent {
  const _Load();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Load);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ShopEvent.load()';
}


}




/// @nodoc
mixin _$ShopState {

 Shop get shop;
/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShopStateCopyWith<ShopState> get copyWith => _$ShopStateCopyWithImpl<ShopState>(this as ShopState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShopState&&(identical(other.shop, shop) || other.shop == shop));
}


@override
int get hashCode => Object.hash(runtimeType,shop);

@override
String toString() {
  return 'ShopState(shop: $shop)';
}


}

/// @nodoc
abstract mixin class $ShopStateCopyWith<$Res>  {
  factory $ShopStateCopyWith(ShopState value, $Res Function(ShopState) _then) = _$ShopStateCopyWithImpl;
@useResult
$Res call({
 Shop shop
});


$ShopCopyWith<$Res> get shop;

}
/// @nodoc
class _$ShopStateCopyWithImpl<$Res>
    implements $ShopStateCopyWith<$Res> {
  _$ShopStateCopyWithImpl(this._self, this._then);

  final ShopState _self;
  final $Res Function(ShopState) _then;

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? shop = null,}) {
  return _then(_self.copyWith(
shop: null == shop ? _self.shop : shop // ignore: cast_nullable_to_non_nullable
as Shop,
  ));
}
/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShopCopyWith<$Res> get shop {
  
  return $ShopCopyWith<$Res>(_self.shop, (value) {
    return _then(_self.copyWith(shop: value));
  });
}
}


/// Adds pattern-matching-related methods to [ShopState].
extension ShopStatePatterns on ShopState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShopState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShopState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShopState value)  $default,){
final _that = this;
switch (_that) {
case _ShopState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShopState value)?  $default,){
final _that = this;
switch (_that) {
case _ShopState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Shop shop)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShopState() when $default != null:
return $default(_that.shop);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Shop shop)  $default,) {final _that = this;
switch (_that) {
case _ShopState():
return $default(_that.shop);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Shop shop)?  $default,) {final _that = this;
switch (_that) {
case _ShopState() when $default != null:
return $default(_that.shop);case _:
  return null;

}
}

}

/// @nodoc


class _ShopState implements ShopState {
  const _ShopState({required this.shop});
  

@override final  Shop shop;

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShopStateCopyWith<_ShopState> get copyWith => __$ShopStateCopyWithImpl<_ShopState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShopState&&(identical(other.shop, shop) || other.shop == shop));
}


@override
int get hashCode => Object.hash(runtimeType,shop);

@override
String toString() {
  return 'ShopState(shop: $shop)';
}


}

/// @nodoc
abstract mixin class _$ShopStateCopyWith<$Res> implements $ShopStateCopyWith<$Res> {
  factory _$ShopStateCopyWith(_ShopState value, $Res Function(_ShopState) _then) = __$ShopStateCopyWithImpl;
@override @useResult
$Res call({
 Shop shop
});


@override $ShopCopyWith<$Res> get shop;

}
/// @nodoc
class __$ShopStateCopyWithImpl<$Res>
    implements _$ShopStateCopyWith<$Res> {
  __$ShopStateCopyWithImpl(this._self, this._then);

  final _ShopState _self;
  final $Res Function(_ShopState) _then;

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? shop = null,}) {
  return _then(_ShopState(
shop: null == shop ? _self.shop : shop // ignore: cast_nullable_to_non_nullable
as Shop,
  ));
}

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShopCopyWith<$Res> get shop {
  
  return $ShopCopyWith<$Res>(_self.shop, (value) {
    return _then(_self.copyWith(shop: value));
  });
}
}

// dart format on
