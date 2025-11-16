// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GameEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameEvent()';
}


}

/// @nodoc
class $GameEventCopyWith<$Res>  {
$GameEventCopyWith(GameEvent _, $Res Function(GameEvent) __);
}


/// Adds pattern-matching-related methods to [GameEvent].
extension GameEventPatterns on GameEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Init value)?  init,TResult Function( _DecrementMove value)?  decrementMove,TResult Function( _AddScore value)?  addScore,TResult Function( _SelectEgg value)?  selectEgg,TResult Function( _UnselectEgg value)?  unselectEgg,TResult Function( _NextLevel value)?  nextLevel,TResult Function( _AddTries value)?  addTries,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that);case _DecrementMove() when decrementMove != null:
return decrementMove(_that);case _AddScore() when addScore != null:
return addScore(_that);case _SelectEgg() when selectEgg != null:
return selectEgg(_that);case _UnselectEgg() when unselectEgg != null:
return unselectEgg(_that);case _NextLevel() when nextLevel != null:
return nextLevel(_that);case _AddTries() when addTries != null:
return addTries(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Init value)  init,required TResult Function( _DecrementMove value)  decrementMove,required TResult Function( _AddScore value)  addScore,required TResult Function( _SelectEgg value)  selectEgg,required TResult Function( _UnselectEgg value)  unselectEgg,required TResult Function( _NextLevel value)  nextLevel,required TResult Function( _AddTries value)  addTries,}){
final _that = this;
switch (_that) {
case _Init():
return init(_that);case _DecrementMove():
return decrementMove(_that);case _AddScore():
return addScore(_that);case _SelectEgg():
return selectEgg(_that);case _UnselectEgg():
return unselectEgg(_that);case _NextLevel():
return nextLevel(_that);case _AddTries():
return addTries(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Init value)?  init,TResult? Function( _DecrementMove value)?  decrementMove,TResult? Function( _AddScore value)?  addScore,TResult? Function( _SelectEgg value)?  selectEgg,TResult? Function( _UnselectEgg value)?  unselectEgg,TResult? Function( _NextLevel value)?  nextLevel,TResult? Function( _AddTries value)?  addTries,}){
final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that);case _DecrementMove() when decrementMove != null:
return decrementMove(_that);case _AddScore() when addScore != null:
return addScore(_that);case _SelectEgg() when selectEgg != null:
return selectEgg(_that);case _UnselectEgg() when unselectEgg != null:
return unselectEgg(_that);case _NextLevel() when nextLevel != null:
return nextLevel(_that);case _AddTries() when addTries != null:
return addTries(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  init,TResult Function()?  decrementMove,TResult Function( int score)?  addScore,TResult Function( Egg egg)?  selectEgg,TResult Function()?  unselectEgg,TResult Function()?  nextLevel,TResult Function( int count)?  addTries,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Init() when init != null:
return init();case _DecrementMove() when decrementMove != null:
return decrementMove();case _AddScore() when addScore != null:
return addScore(_that.score);case _SelectEgg() when selectEgg != null:
return selectEgg(_that.egg);case _UnselectEgg() when unselectEgg != null:
return unselectEgg();case _NextLevel() when nextLevel != null:
return nextLevel();case _AddTries() when addTries != null:
return addTries(_that.count);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  init,required TResult Function()  decrementMove,required TResult Function( int score)  addScore,required TResult Function( Egg egg)  selectEgg,required TResult Function()  unselectEgg,required TResult Function()  nextLevel,required TResult Function( int count)  addTries,}) {final _that = this;
switch (_that) {
case _Init():
return init();case _DecrementMove():
return decrementMove();case _AddScore():
return addScore(_that.score);case _SelectEgg():
return selectEgg(_that.egg);case _UnselectEgg():
return unselectEgg();case _NextLevel():
return nextLevel();case _AddTries():
return addTries(_that.count);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  init,TResult? Function()?  decrementMove,TResult? Function( int score)?  addScore,TResult? Function( Egg egg)?  selectEgg,TResult? Function()?  unselectEgg,TResult? Function()?  nextLevel,TResult? Function( int count)?  addTries,}) {final _that = this;
switch (_that) {
case _Init() when init != null:
return init();case _DecrementMove() when decrementMove != null:
return decrementMove();case _AddScore() when addScore != null:
return addScore(_that.score);case _SelectEgg() when selectEgg != null:
return selectEgg(_that.egg);case _UnselectEgg() when unselectEgg != null:
return unselectEgg();case _NextLevel() when nextLevel != null:
return nextLevel();case _AddTries() when addTries != null:
return addTries(_that.count);case _:
  return null;

}
}

}

/// @nodoc


class _Init implements GameEvent {
  const _Init();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Init);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameEvent.init()';
}


}




/// @nodoc


class _DecrementMove implements GameEvent {
  const _DecrementMove();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DecrementMove);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameEvent.decrementMove()';
}


}




/// @nodoc


class _AddScore implements GameEvent {
  const _AddScore({required this.score});
  

 final  int score;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddScoreCopyWith<_AddScore> get copyWith => __$AddScoreCopyWithImpl<_AddScore>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddScore&&(identical(other.score, score) || other.score == score));
}


@override
int get hashCode => Object.hash(runtimeType,score);

@override
String toString() {
  return 'GameEvent.addScore(score: $score)';
}


}

/// @nodoc
abstract mixin class _$AddScoreCopyWith<$Res> implements $GameEventCopyWith<$Res> {
  factory _$AddScoreCopyWith(_AddScore value, $Res Function(_AddScore) _then) = __$AddScoreCopyWithImpl;
@useResult
$Res call({
 int score
});




}
/// @nodoc
class __$AddScoreCopyWithImpl<$Res>
    implements _$AddScoreCopyWith<$Res> {
  __$AddScoreCopyWithImpl(this._self, this._then);

  final _AddScore _self;
  final $Res Function(_AddScore) _then;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? score = null,}) {
  return _then(_AddScore(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _SelectEgg implements GameEvent {
  const _SelectEgg({required this.egg});
  

 final  Egg egg;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectEggCopyWith<_SelectEgg> get copyWith => __$SelectEggCopyWithImpl<_SelectEgg>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectEgg&&(identical(other.egg, egg) || other.egg == egg));
}


@override
int get hashCode => Object.hash(runtimeType,egg);

@override
String toString() {
  return 'GameEvent.selectEgg(egg: $egg)';
}


}

/// @nodoc
abstract mixin class _$SelectEggCopyWith<$Res> implements $GameEventCopyWith<$Res> {
  factory _$SelectEggCopyWith(_SelectEgg value, $Res Function(_SelectEgg) _then) = __$SelectEggCopyWithImpl;
@useResult
$Res call({
 Egg egg
});




}
/// @nodoc
class __$SelectEggCopyWithImpl<$Res>
    implements _$SelectEggCopyWith<$Res> {
  __$SelectEggCopyWithImpl(this._self, this._then);

  final _SelectEgg _self;
  final $Res Function(_SelectEgg) _then;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? egg = null,}) {
  return _then(_SelectEgg(
egg: null == egg ? _self.egg : egg // ignore: cast_nullable_to_non_nullable
as Egg,
  ));
}


}

/// @nodoc


class _UnselectEgg implements GameEvent {
  const _UnselectEgg();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnselectEgg);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameEvent.unselectEgg()';
}


}




/// @nodoc


class _NextLevel implements GameEvent {
  const _NextLevel();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NextLevel);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameEvent.nextLevel()';
}


}




/// @nodoc


class _AddTries implements GameEvent {
  const _AddTries({required this.count});
  

 final  int count;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddTriesCopyWith<_AddTries> get copyWith => __$AddTriesCopyWithImpl<_AddTries>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddTries&&(identical(other.count, count) || other.count == count));
}


@override
int get hashCode => Object.hash(runtimeType,count);

@override
String toString() {
  return 'GameEvent.addTries(count: $count)';
}


}

/// @nodoc
abstract mixin class _$AddTriesCopyWith<$Res> implements $GameEventCopyWith<$Res> {
  factory _$AddTriesCopyWith(_AddTries value, $Res Function(_AddTries) _then) = __$AddTriesCopyWithImpl;
@useResult
$Res call({
 int count
});




}
/// @nodoc
class __$AddTriesCopyWithImpl<$Res>
    implements _$AddTriesCopyWith<$Res> {
  __$AddTriesCopyWithImpl(this._self, this._then);

  final _AddTries _self;
  final $Res Function(_AddTries) _then;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? count = null,}) {
  return _then(_AddTries(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$GameState {

 GameConfig get config; int get score; int get level; int get tries; Egg? get selectedEgg;
/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameStateCopyWith<GameState> get copyWith => _$GameStateCopyWithImpl<GameState>(this as GameState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameState&&(identical(other.config, config) || other.config == config)&&(identical(other.score, score) || other.score == score)&&(identical(other.level, level) || other.level == level)&&(identical(other.tries, tries) || other.tries == tries)&&(identical(other.selectedEgg, selectedEgg) || other.selectedEgg == selectedEgg));
}


@override
int get hashCode => Object.hash(runtimeType,config,score,level,tries,selectedEgg);

@override
String toString() {
  return 'GameState(config: $config, score: $score, level: $level, tries: $tries, selectedEgg: $selectedEgg)';
}


}

/// @nodoc
abstract mixin class $GameStateCopyWith<$Res>  {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) _then) = _$GameStateCopyWithImpl;
@useResult
$Res call({
 GameConfig config, int score, int level, int tries, Egg? selectedEgg
});




}
/// @nodoc
class _$GameStateCopyWithImpl<$Res>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._self, this._then);

  final GameState _self;
  final $Res Function(GameState) _then;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? config = null,Object? score = null,Object? level = null,Object? tries = null,Object? selectedEgg = freezed,}) {
  return _then(_self.copyWith(
config: null == config ? _self.config : config // ignore: cast_nullable_to_non_nullable
as GameConfig,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,tries: null == tries ? _self.tries : tries // ignore: cast_nullable_to_non_nullable
as int,selectedEgg: freezed == selectedEgg ? _self.selectedEgg : selectedEgg // ignore: cast_nullable_to_non_nullable
as Egg?,
  ));
}

}


/// Adds pattern-matching-related methods to [GameState].
extension GameStatePatterns on GameState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameState value)  $default,){
final _that = this;
switch (_that) {
case _GameState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameState value)?  $default,){
final _that = this;
switch (_that) {
case _GameState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GameConfig config,  int score,  int level,  int tries,  Egg? selectedEgg)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameState() when $default != null:
return $default(_that.config,_that.score,_that.level,_that.tries,_that.selectedEgg);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GameConfig config,  int score,  int level,  int tries,  Egg? selectedEgg)  $default,) {final _that = this;
switch (_that) {
case _GameState():
return $default(_that.config,_that.score,_that.level,_that.tries,_that.selectedEgg);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GameConfig config,  int score,  int level,  int tries,  Egg? selectedEgg)?  $default,) {final _that = this;
switch (_that) {
case _GameState() when $default != null:
return $default(_that.config,_that.score,_that.level,_that.tries,_that.selectedEgg);case _:
  return null;

}
}

}

/// @nodoc


class _GameState implements GameState {
  const _GameState({required this.config, this.score = 0, this.level = 1, this.tries = 0, this.selectedEgg});
  

@override final  GameConfig config;
@override@JsonKey() final  int score;
@override@JsonKey() final  int level;
@override@JsonKey() final  int tries;
@override final  Egg? selectedEgg;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameStateCopyWith<_GameState> get copyWith => __$GameStateCopyWithImpl<_GameState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameState&&(identical(other.config, config) || other.config == config)&&(identical(other.score, score) || other.score == score)&&(identical(other.level, level) || other.level == level)&&(identical(other.tries, tries) || other.tries == tries)&&(identical(other.selectedEgg, selectedEgg) || other.selectedEgg == selectedEgg));
}


@override
int get hashCode => Object.hash(runtimeType,config,score,level,tries,selectedEgg);

@override
String toString() {
  return 'GameState(config: $config, score: $score, level: $level, tries: $tries, selectedEgg: $selectedEgg)';
}


}

/// @nodoc
abstract mixin class _$GameStateCopyWith<$Res> implements $GameStateCopyWith<$Res> {
  factory _$GameStateCopyWith(_GameState value, $Res Function(_GameState) _then) = __$GameStateCopyWithImpl;
@override @useResult
$Res call({
 GameConfig config, int score, int level, int tries, Egg? selectedEgg
});




}
/// @nodoc
class __$GameStateCopyWithImpl<$Res>
    implements _$GameStateCopyWith<$Res> {
  __$GameStateCopyWithImpl(this._self, this._then);

  final _GameState _self;
  final $Res Function(_GameState) _then;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? config = null,Object? score = null,Object? level = null,Object? tries = null,Object? selectedEgg = freezed,}) {
  return _then(_GameState(
config: null == config ? _self.config : config // ignore: cast_nullable_to_non_nullable
as GameConfig,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,tries: null == tries ? _self.tries : tries // ignore: cast_nullable_to_non_nullable
as int,selectedEgg: freezed == selectedEgg ? _self.selectedEgg : selectedEgg // ignore: cast_nullable_to_non_nullable
as Egg?,
  ));
}


}

// dart format on
