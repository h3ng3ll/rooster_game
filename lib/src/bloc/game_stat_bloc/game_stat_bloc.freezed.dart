// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_stat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GameStatEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameStatEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameStatEvent()';
}


}

/// @nodoc
class $GameStatEventCopyWith<$Res>  {
$GameStatEventCopyWith(GameStatEvent _, $Res Function(GameStatEvent) __);
}


/// Adds pattern-matching-related methods to [GameStatEvent].
extension GameStatEventPatterns on GameStatEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _UpdateBestScore value)?  updateBestScore,TResult Function( _UnlockNextLevel value)?  unlockNextLevel,TResult Function( _LoadStats value)?  loadStats,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateBestScore() when updateBestScore != null:
return updateBestScore(_that);case _UnlockNextLevel() when unlockNextLevel != null:
return unlockNextLevel(_that);case _LoadStats() when loadStats != null:
return loadStats(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _UpdateBestScore value)  updateBestScore,required TResult Function( _UnlockNextLevel value)  unlockNextLevel,required TResult Function( _LoadStats value)  loadStats,}){
final _that = this;
switch (_that) {
case _UpdateBestScore():
return updateBestScore(_that);case _UnlockNextLevel():
return unlockNextLevel(_that);case _LoadStats():
return loadStats(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _UpdateBestScore value)?  updateBestScore,TResult? Function( _UnlockNextLevel value)?  unlockNextLevel,TResult? Function( _LoadStats value)?  loadStats,}){
final _that = this;
switch (_that) {
case _UpdateBestScore() when updateBestScore != null:
return updateBestScore(_that);case _UnlockNextLevel() when unlockNextLevel != null:
return unlockNextLevel(_that);case _LoadStats() when loadStats != null:
return loadStats(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int score)?  updateBestScore,TResult Function()?  unlockNextLevel,TResult Function()?  loadStats,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateBestScore() when updateBestScore != null:
return updateBestScore(_that.score);case _UnlockNextLevel() when unlockNextLevel != null:
return unlockNextLevel();case _LoadStats() when loadStats != null:
return loadStats();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int score)  updateBestScore,required TResult Function()  unlockNextLevel,required TResult Function()  loadStats,}) {final _that = this;
switch (_that) {
case _UpdateBestScore():
return updateBestScore(_that.score);case _UnlockNextLevel():
return unlockNextLevel();case _LoadStats():
return loadStats();case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int score)?  updateBestScore,TResult? Function()?  unlockNextLevel,TResult? Function()?  loadStats,}) {final _that = this;
switch (_that) {
case _UpdateBestScore() when updateBestScore != null:
return updateBestScore(_that.score);case _UnlockNextLevel() when unlockNextLevel != null:
return unlockNextLevel();case _LoadStats() when loadStats != null:
return loadStats();case _:
  return null;

}
}

}

/// @nodoc


class _UpdateBestScore implements GameStatEvent {
  const _UpdateBestScore({required this.score});
  

 final  int score;

/// Create a copy of GameStatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateBestScoreCopyWith<_UpdateBestScore> get copyWith => __$UpdateBestScoreCopyWithImpl<_UpdateBestScore>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateBestScore&&(identical(other.score, score) || other.score == score));
}


@override
int get hashCode => Object.hash(runtimeType,score);

@override
String toString() {
  return 'GameStatEvent.updateBestScore(score: $score)';
}


}

/// @nodoc
abstract mixin class _$UpdateBestScoreCopyWith<$Res> implements $GameStatEventCopyWith<$Res> {
  factory _$UpdateBestScoreCopyWith(_UpdateBestScore value, $Res Function(_UpdateBestScore) _then) = __$UpdateBestScoreCopyWithImpl;
@useResult
$Res call({
 int score
});




}
/// @nodoc
class __$UpdateBestScoreCopyWithImpl<$Res>
    implements _$UpdateBestScoreCopyWith<$Res> {
  __$UpdateBestScoreCopyWithImpl(this._self, this._then);

  final _UpdateBestScore _self;
  final $Res Function(_UpdateBestScore) _then;

/// Create a copy of GameStatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? score = null,}) {
  return _then(_UpdateBestScore(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UnlockNextLevel implements GameStatEvent {
  const _UnlockNextLevel();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnlockNextLevel);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameStatEvent.unlockNextLevel()';
}


}




/// @nodoc


class _LoadStats implements GameStatEvent {
  const _LoadStats();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadStats);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameStatEvent.loadStats()';
}


}




/// @nodoc
mixin _$GameStatState {

 GameStat get gameStat;
/// Create a copy of GameStatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameStatStateCopyWith<GameStatState> get copyWith => _$GameStatStateCopyWithImpl<GameStatState>(this as GameStatState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameStatState&&(identical(other.gameStat, gameStat) || other.gameStat == gameStat));
}


@override
int get hashCode => Object.hash(runtimeType,gameStat);

@override
String toString() {
  return 'GameStatState(gameStat: $gameStat)';
}


}

/// @nodoc
abstract mixin class $GameStatStateCopyWith<$Res>  {
  factory $GameStatStateCopyWith(GameStatState value, $Res Function(GameStatState) _then) = _$GameStatStateCopyWithImpl;
@useResult
$Res call({
 GameStat gameStat
});


$GameStatCopyWith<$Res> get gameStat;

}
/// @nodoc
class _$GameStatStateCopyWithImpl<$Res>
    implements $GameStatStateCopyWith<$Res> {
  _$GameStatStateCopyWithImpl(this._self, this._then);

  final GameStatState _self;
  final $Res Function(GameStatState) _then;

/// Create a copy of GameStatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gameStat = null,}) {
  return _then(_self.copyWith(
gameStat: null == gameStat ? _self.gameStat : gameStat // ignore: cast_nullable_to_non_nullable
as GameStat,
  ));
}
/// Create a copy of GameStatState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameStatCopyWith<$Res> get gameStat {
  
  return $GameStatCopyWith<$Res>(_self.gameStat, (value) {
    return _then(_self.copyWith(gameStat: value));
  });
}
}


/// Adds pattern-matching-related methods to [GameStatState].
extension GameStatStatePatterns on GameStatState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameStatState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameStatState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameStatState value)  $default,){
final _that = this;
switch (_that) {
case _GameStatState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameStatState value)?  $default,){
final _that = this;
switch (_that) {
case _GameStatState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GameStat gameStat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameStatState() when $default != null:
return $default(_that.gameStat);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GameStat gameStat)  $default,) {final _that = this;
switch (_that) {
case _GameStatState():
return $default(_that.gameStat);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GameStat gameStat)?  $default,) {final _that = this;
switch (_that) {
case _GameStatState() when $default != null:
return $default(_that.gameStat);case _:
  return null;

}
}

}

/// @nodoc


class _GameStatState implements GameStatState {
  const _GameStatState({required this.gameStat});
  

@override final  GameStat gameStat;

/// Create a copy of GameStatState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameStatStateCopyWith<_GameStatState> get copyWith => __$GameStatStateCopyWithImpl<_GameStatState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameStatState&&(identical(other.gameStat, gameStat) || other.gameStat == gameStat));
}


@override
int get hashCode => Object.hash(runtimeType,gameStat);

@override
String toString() {
  return 'GameStatState(gameStat: $gameStat)';
}


}

/// @nodoc
abstract mixin class _$GameStatStateCopyWith<$Res> implements $GameStatStateCopyWith<$Res> {
  factory _$GameStatStateCopyWith(_GameStatState value, $Res Function(_GameStatState) _then) = __$GameStatStateCopyWithImpl;
@override @useResult
$Res call({
 GameStat gameStat
});


@override $GameStatCopyWith<$Res> get gameStat;

}
/// @nodoc
class __$GameStatStateCopyWithImpl<$Res>
    implements _$GameStatStateCopyWith<$Res> {
  __$GameStatStateCopyWithImpl(this._self, this._then);

  final _GameStatState _self;
  final $Res Function(_GameStatState) _then;

/// Create a copy of GameStatState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gameStat = null,}) {
  return _then(_GameStatState(
gameStat: null == gameStat ? _self.gameStat : gameStat // ignore: cast_nullable_to_non_nullable
as GameStat,
  ));
}

/// Create a copy of GameStatState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameStatCopyWith<$Res> get gameStat {
  
  return $GameStatCopyWith<$Res>(_self.gameStat, (value) {
    return _then(_self.copyWith(gameStat: value));
  });
}
}

// dart format on
