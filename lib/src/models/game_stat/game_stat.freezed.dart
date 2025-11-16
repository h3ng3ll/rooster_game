// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_stat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameStat {

 int get bestScore; int get currentLevel;
/// Create a copy of GameStat
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameStatCopyWith<GameStat> get copyWith => _$GameStatCopyWithImpl<GameStat>(this as GameStat, _$identity);

  /// Serializes this GameStat to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameStat&&(identical(other.bestScore, bestScore) || other.bestScore == bestScore)&&(identical(other.currentLevel, currentLevel) || other.currentLevel == currentLevel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bestScore,currentLevel);

@override
String toString() {
  return 'GameStat(bestScore: $bestScore, currentLevel: $currentLevel)';
}


}

/// @nodoc
abstract mixin class $GameStatCopyWith<$Res>  {
  factory $GameStatCopyWith(GameStat value, $Res Function(GameStat) _then) = _$GameStatCopyWithImpl;
@useResult
$Res call({
 int bestScore, int currentLevel
});




}
/// @nodoc
class _$GameStatCopyWithImpl<$Res>
    implements $GameStatCopyWith<$Res> {
  _$GameStatCopyWithImpl(this._self, this._then);

  final GameStat _self;
  final $Res Function(GameStat) _then;

/// Create a copy of GameStat
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bestScore = null,Object? currentLevel = null,}) {
  return _then(_self.copyWith(
bestScore: null == bestScore ? _self.bestScore : bestScore // ignore: cast_nullable_to_non_nullable
as int,currentLevel: null == currentLevel ? _self.currentLevel : currentLevel // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GameStat].
extension GameStatPatterns on GameStat {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameStat value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameStat() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameStat value)  $default,){
final _that = this;
switch (_that) {
case _GameStat():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameStat value)?  $default,){
final _that = this;
switch (_that) {
case _GameStat() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int bestScore,  int currentLevel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameStat() when $default != null:
return $default(_that.bestScore,_that.currentLevel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int bestScore,  int currentLevel)  $default,) {final _that = this;
switch (_that) {
case _GameStat():
return $default(_that.bestScore,_that.currentLevel);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int bestScore,  int currentLevel)?  $default,) {final _that = this;
switch (_that) {
case _GameStat() when $default != null:
return $default(_that.bestScore,_that.currentLevel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameStat extends GameStat {
   _GameStat({this.bestScore = 0, this.currentLevel = 0}): super._();
  factory _GameStat.fromJson(Map<String, dynamic> json) => _$GameStatFromJson(json);

@override@JsonKey() final  int bestScore;
@override@JsonKey() final  int currentLevel;

/// Create a copy of GameStat
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameStatCopyWith<_GameStat> get copyWith => __$GameStatCopyWithImpl<_GameStat>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameStatToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameStat&&(identical(other.bestScore, bestScore) || other.bestScore == bestScore)&&(identical(other.currentLevel, currentLevel) || other.currentLevel == currentLevel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bestScore,currentLevel);

@override
String toString() {
  return 'GameStat(bestScore: $bestScore, currentLevel: $currentLevel)';
}


}

/// @nodoc
abstract mixin class _$GameStatCopyWith<$Res> implements $GameStatCopyWith<$Res> {
  factory _$GameStatCopyWith(_GameStat value, $Res Function(_GameStat) _then) = __$GameStatCopyWithImpl;
@override @useResult
$Res call({
 int bestScore, int currentLevel
});




}
/// @nodoc
class __$GameStatCopyWithImpl<$Res>
    implements _$GameStatCopyWith<$Res> {
  __$GameStatCopyWithImpl(this._self, this._then);

  final _GameStat _self;
  final $Res Function(_GameStat) _then;

/// Create a copy of GameStat
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bestScore = null,Object? currentLevel = null,}) {
  return _then(_GameStat(
bestScore: null == bestScore ? _self.bestScore : bestScore // ignore: cast_nullable_to_non_nullable
as int,currentLevel: null == currentLevel ? _self.currentLevel : currentLevel // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
