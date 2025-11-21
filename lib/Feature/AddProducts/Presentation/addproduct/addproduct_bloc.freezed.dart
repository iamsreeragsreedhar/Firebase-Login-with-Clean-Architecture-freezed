// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'addproduct_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddproductState {

 bool get isloadng; bool get issuccess; bool get iserror; String get msg; addProdcutState get productstate;
/// Create a copy of AddproductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddproductStateCopyWith<AddproductState> get copyWith => _$AddproductStateCopyWithImpl<AddproductState>(this as AddproductState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddproductState&&(identical(other.isloadng, isloadng) || other.isloadng == isloadng)&&(identical(other.issuccess, issuccess) || other.issuccess == issuccess)&&(identical(other.iserror, iserror) || other.iserror == iserror)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.productstate, productstate) || other.productstate == productstate));
}


@override
int get hashCode => Object.hash(runtimeType,isloadng,issuccess,iserror,msg,productstate);

@override
String toString() {
  return 'AddproductState(isloadng: $isloadng, issuccess: $issuccess, iserror: $iserror, msg: $msg, productstate: $productstate)';
}


}

/// @nodoc
abstract mixin class $AddproductStateCopyWith<$Res>  {
  factory $AddproductStateCopyWith(AddproductState value, $Res Function(AddproductState) _then) = _$AddproductStateCopyWithImpl;
@useResult
$Res call({
 bool isloadng, bool issuccess, bool iserror, String msg, addProdcutState productstate
});




}
/// @nodoc
class _$AddproductStateCopyWithImpl<$Res>
    implements $AddproductStateCopyWith<$Res> {
  _$AddproductStateCopyWithImpl(this._self, this._then);

  final AddproductState _self;
  final $Res Function(AddproductState) _then;

/// Create a copy of AddproductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isloadng = null,Object? issuccess = null,Object? iserror = null,Object? msg = null,Object? productstate = null,}) {
  return _then(_self.copyWith(
isloadng: null == isloadng ? _self.isloadng : isloadng // ignore: cast_nullable_to_non_nullable
as bool,issuccess: null == issuccess ? _self.issuccess : issuccess // ignore: cast_nullable_to_non_nullable
as bool,iserror: null == iserror ? _self.iserror : iserror // ignore: cast_nullable_to_non_nullable
as bool,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,productstate: null == productstate ? _self.productstate : productstate // ignore: cast_nullable_to_non_nullable
as addProdcutState,
  ));
}

}


/// Adds pattern-matching-related methods to [AddproductState].
extension AddproductStatePatterns on AddproductState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddproductState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddproductState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddproductState value)  $default,){
final _that = this;
switch (_that) {
case _AddproductState():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddproductState value)?  $default,){
final _that = this;
switch (_that) {
case _AddproductState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isloadng,  bool issuccess,  bool iserror,  String msg,  addProdcutState productstate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddproductState() when $default != null:
return $default(_that.isloadng,_that.issuccess,_that.iserror,_that.msg,_that.productstate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isloadng,  bool issuccess,  bool iserror,  String msg,  addProdcutState productstate)  $default,) {final _that = this;
switch (_that) {
case _AddproductState():
return $default(_that.isloadng,_that.issuccess,_that.iserror,_that.msg,_that.productstate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isloadng,  bool issuccess,  bool iserror,  String msg,  addProdcutState productstate)?  $default,) {final _that = this;
switch (_that) {
case _AddproductState() when $default != null:
return $default(_that.isloadng,_that.issuccess,_that.iserror,_that.msg,_that.productstate);case _:
  return null;

}
}

}

/// @nodoc


class _AddproductState implements AddproductState {
  const _AddproductState({this.isloadng = false, this.issuccess = false, this.iserror = false, this.msg = '', this.productstate = addProdcutState.none});
  

@override@JsonKey() final  bool isloadng;
@override@JsonKey() final  bool issuccess;
@override@JsonKey() final  bool iserror;
@override@JsonKey() final  String msg;
@override@JsonKey() final  addProdcutState productstate;

/// Create a copy of AddproductState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddproductStateCopyWith<_AddproductState> get copyWith => __$AddproductStateCopyWithImpl<_AddproductState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddproductState&&(identical(other.isloadng, isloadng) || other.isloadng == isloadng)&&(identical(other.issuccess, issuccess) || other.issuccess == issuccess)&&(identical(other.iserror, iserror) || other.iserror == iserror)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.productstate, productstate) || other.productstate == productstate));
}


@override
int get hashCode => Object.hash(runtimeType,isloadng,issuccess,iserror,msg,productstate);

@override
String toString() {
  return 'AddproductState(isloadng: $isloadng, issuccess: $issuccess, iserror: $iserror, msg: $msg, productstate: $productstate)';
}


}

/// @nodoc
abstract mixin class _$AddproductStateCopyWith<$Res> implements $AddproductStateCopyWith<$Res> {
  factory _$AddproductStateCopyWith(_AddproductState value, $Res Function(_AddproductState) _then) = __$AddproductStateCopyWithImpl;
@override @useResult
$Res call({
 bool isloadng, bool issuccess, bool iserror, String msg, addProdcutState productstate
});




}
/// @nodoc
class __$AddproductStateCopyWithImpl<$Res>
    implements _$AddproductStateCopyWith<$Res> {
  __$AddproductStateCopyWithImpl(this._self, this._then);

  final _AddproductState _self;
  final $Res Function(_AddproductState) _then;

/// Create a copy of AddproductState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isloadng = null,Object? issuccess = null,Object? iserror = null,Object? msg = null,Object? productstate = null,}) {
  return _then(_AddproductState(
isloadng: null == isloadng ? _self.isloadng : isloadng // ignore: cast_nullable_to_non_nullable
as bool,issuccess: null == issuccess ? _self.issuccess : issuccess // ignore: cast_nullable_to_non_nullable
as bool,iserror: null == iserror ? _self.iserror : iserror // ignore: cast_nullable_to_non_nullable
as bool,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,productstate: null == productstate ? _self.productstate : productstate // ignore: cast_nullable_to_non_nullable
as addProdcutState,
  ));
}


}

/// @nodoc
mixin _$AddproductEvent {

 AddProductEnttiy get entity;
/// Create a copy of AddproductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddproductEventCopyWith<AddproductEvent> get copyWith => _$AddproductEventCopyWithImpl<AddproductEvent>(this as AddproductEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddproductEvent&&(identical(other.entity, entity) || other.entity == entity));
}


@override
int get hashCode => Object.hash(runtimeType,entity);

@override
String toString() {
  return 'AddproductEvent(entity: $entity)';
}


}

/// @nodoc
abstract mixin class $AddproductEventCopyWith<$Res>  {
  factory $AddproductEventCopyWith(AddproductEvent value, $Res Function(AddproductEvent) _then) = _$AddproductEventCopyWithImpl;
@useResult
$Res call({
 AddProductEnttiy entity
});




}
/// @nodoc
class _$AddproductEventCopyWithImpl<$Res>
    implements $AddproductEventCopyWith<$Res> {
  _$AddproductEventCopyWithImpl(this._self, this._then);

  final AddproductEvent _self;
  final $Res Function(AddproductEvent) _then;

/// Create a copy of AddproductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? entity = null,}) {
  return _then(_self.copyWith(
entity: null == entity ? _self.entity : entity // ignore: cast_nullable_to_non_nullable
as AddProductEnttiy,
  ));
}

}


/// Adds pattern-matching-related methods to [AddproductEvent].
extension AddproductEventPatterns on AddproductEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AddNewProducts value)?  addNewProducts,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AddNewProducts() when addNewProducts != null:
return addNewProducts(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AddNewProducts value)  addNewProducts,}){
final _that = this;
switch (_that) {
case AddNewProducts():
return addNewProducts(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AddNewProducts value)?  addNewProducts,}){
final _that = this;
switch (_that) {
case AddNewProducts() when addNewProducts != null:
return addNewProducts(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( AddProductEnttiy entity)?  addNewProducts,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AddNewProducts() when addNewProducts != null:
return addNewProducts(_that.entity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( AddProductEnttiy entity)  addNewProducts,}) {final _that = this;
switch (_that) {
case AddNewProducts():
return addNewProducts(_that.entity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( AddProductEnttiy entity)?  addNewProducts,}) {final _that = this;
switch (_that) {
case AddNewProducts() when addNewProducts != null:
return addNewProducts(_that.entity);case _:
  return null;

}
}

}

/// @nodoc


class AddNewProducts implements AddproductEvent {
   AddNewProducts(this.entity);
  

@override final  AddProductEnttiy entity;

/// Create a copy of AddproductEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddNewProductsCopyWith<AddNewProducts> get copyWith => _$AddNewProductsCopyWithImpl<AddNewProducts>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddNewProducts&&(identical(other.entity, entity) || other.entity == entity));
}


@override
int get hashCode => Object.hash(runtimeType,entity);

@override
String toString() {
  return 'AddproductEvent.addNewProducts(entity: $entity)';
}


}

/// @nodoc
abstract mixin class $AddNewProductsCopyWith<$Res> implements $AddproductEventCopyWith<$Res> {
  factory $AddNewProductsCopyWith(AddNewProducts value, $Res Function(AddNewProducts) _then) = _$AddNewProductsCopyWithImpl;
@override @useResult
$Res call({
 AddProductEnttiy entity
});




}
/// @nodoc
class _$AddNewProductsCopyWithImpl<$Res>
    implements $AddNewProductsCopyWith<$Res> {
  _$AddNewProductsCopyWithImpl(this._self, this._then);

  final AddNewProducts _self;
  final $Res Function(AddNewProducts) _then;

/// Create a copy of AddproductEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? entity = null,}) {
  return _then(AddNewProducts(
null == entity ? _self.entity : entity // ignore: cast_nullable_to_non_nullable
as AddProductEnttiy,
  ));
}


}

// dart format on
