// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductEvent()';
}


}

/// @nodoc
class $ProductEventCopyWith<$Res>  {
$ProductEventCopyWith(ProductEvent _, $Res Function(ProductEvent) __);
}


/// Adds pattern-matching-related methods to [ProductEvent].
extension ProductEventPatterns on ProductEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetProdcts value)?  getProdcts,TResult Function( GetProdctsfromBase value)?  getProdctsfromBase,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetProdcts() when getProdcts != null:
return getProdcts(_that);case GetProdctsfromBase() when getProdctsfromBase != null:
return getProdctsfromBase(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetProdcts value)  getProdcts,required TResult Function( GetProdctsfromBase value)  getProdctsfromBase,}){
final _that = this;
switch (_that) {
case GetProdcts():
return getProdcts(_that);case GetProdctsfromBase():
return getProdctsfromBase(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetProdcts value)?  getProdcts,TResult? Function( GetProdctsfromBase value)?  getProdctsfromBase,}){
final _that = this;
switch (_that) {
case GetProdcts() when getProdcts != null:
return getProdcts(_that);case GetProdctsfromBase() when getProdctsfromBase != null:
return getProdctsfromBase(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String endpoints)?  getProdcts,TResult Function()?  getProdctsfromBase,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetProdcts() when getProdcts != null:
return getProdcts(_that.endpoints);case GetProdctsfromBase() when getProdctsfromBase != null:
return getProdctsfromBase();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String endpoints)  getProdcts,required TResult Function()  getProdctsfromBase,}) {final _that = this;
switch (_that) {
case GetProdcts():
return getProdcts(_that.endpoints);case GetProdctsfromBase():
return getProdctsfromBase();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String endpoints)?  getProdcts,TResult? Function()?  getProdctsfromBase,}) {final _that = this;
switch (_that) {
case GetProdcts() when getProdcts != null:
return getProdcts(_that.endpoints);case GetProdctsfromBase() when getProdctsfromBase != null:
return getProdctsfromBase();case _:
  return null;

}
}

}

/// @nodoc


class GetProdcts implements ProductEvent {
  const GetProdcts(this.endpoints);
  

 final  String endpoints;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetProdctsCopyWith<GetProdcts> get copyWith => _$GetProdctsCopyWithImpl<GetProdcts>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProdcts&&(identical(other.endpoints, endpoints) || other.endpoints == endpoints));
}


@override
int get hashCode => Object.hash(runtimeType,endpoints);

@override
String toString() {
  return 'ProductEvent.getProdcts(endpoints: $endpoints)';
}


}

/// @nodoc
abstract mixin class $GetProdctsCopyWith<$Res> implements $ProductEventCopyWith<$Res> {
  factory $GetProdctsCopyWith(GetProdcts value, $Res Function(GetProdcts) _then) = _$GetProdctsCopyWithImpl;
@useResult
$Res call({
 String endpoints
});




}
/// @nodoc
class _$GetProdctsCopyWithImpl<$Res>
    implements $GetProdctsCopyWith<$Res> {
  _$GetProdctsCopyWithImpl(this._self, this._then);

  final GetProdcts _self;
  final $Res Function(GetProdcts) _then;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? endpoints = null,}) {
  return _then(GetProdcts(
null == endpoints ? _self.endpoints : endpoints // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetProdctsfromBase implements ProductEvent {
  const GetProdctsfromBase();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProdctsfromBase);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductEvent.getProdctsfromBase()';
}


}




/// @nodoc
mixin _$ProductState {

 bool get isloading; bool get issuccess; bool get isfailure; String get errormessage; List<ProductEntity> get DataList; List<Firebaseproductentity> get firebaseDataList;
/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductStateCopyWith<ProductState> get copyWith => _$ProductStateCopyWithImpl<ProductState>(this as ProductState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductState&&(identical(other.isloading, isloading) || other.isloading == isloading)&&(identical(other.issuccess, issuccess) || other.issuccess == issuccess)&&(identical(other.isfailure, isfailure) || other.isfailure == isfailure)&&(identical(other.errormessage, errormessage) || other.errormessage == errormessage)&&const DeepCollectionEquality().equals(other.DataList, DataList)&&const DeepCollectionEquality().equals(other.firebaseDataList, firebaseDataList));
}


@override
int get hashCode => Object.hash(runtimeType,isloading,issuccess,isfailure,errormessage,const DeepCollectionEquality().hash(DataList),const DeepCollectionEquality().hash(firebaseDataList));

@override
String toString() {
  return 'ProductState(isloading: $isloading, issuccess: $issuccess, isfailure: $isfailure, errormessage: $errormessage, DataList: $DataList, firebaseDataList: $firebaseDataList)';
}


}

/// @nodoc
abstract mixin class $ProductStateCopyWith<$Res>  {
  factory $ProductStateCopyWith(ProductState value, $Res Function(ProductState) _then) = _$ProductStateCopyWithImpl;
@useResult
$Res call({
 bool isloading, bool issuccess, bool isfailure, String errormessage, List<ProductEntity> DataList, List<Firebaseproductentity> firebaseDataList
});




}
/// @nodoc
class _$ProductStateCopyWithImpl<$Res>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._self, this._then);

  final ProductState _self;
  final $Res Function(ProductState) _then;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isloading = null,Object? issuccess = null,Object? isfailure = null,Object? errormessage = null,Object? DataList = null,Object? firebaseDataList = null,}) {
  return _then(_self.copyWith(
isloading: null == isloading ? _self.isloading : isloading // ignore: cast_nullable_to_non_nullable
as bool,issuccess: null == issuccess ? _self.issuccess : issuccess // ignore: cast_nullable_to_non_nullable
as bool,isfailure: null == isfailure ? _self.isfailure : isfailure // ignore: cast_nullable_to_non_nullable
as bool,errormessage: null == errormessage ? _self.errormessage : errormessage // ignore: cast_nullable_to_non_nullable
as String,DataList: null == DataList ? _self.DataList : DataList // ignore: cast_nullable_to_non_nullable
as List<ProductEntity>,firebaseDataList: null == firebaseDataList ? _self.firebaseDataList : firebaseDataList // ignore: cast_nullable_to_non_nullable
as List<Firebaseproductentity>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductState].
extension ProductStatePatterns on ProductState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _$productState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _$productState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _$productState value)  $default,){
final _that = this;
switch (_that) {
case _$productState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _$productState value)?  $default,){
final _that = this;
switch (_that) {
case _$productState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isloading,  bool issuccess,  bool isfailure,  String errormessage,  List<ProductEntity> DataList,  List<Firebaseproductentity> firebaseDataList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _$productState() when $default != null:
return $default(_that.isloading,_that.issuccess,_that.isfailure,_that.errormessage,_that.DataList,_that.firebaseDataList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isloading,  bool issuccess,  bool isfailure,  String errormessage,  List<ProductEntity> DataList,  List<Firebaseproductentity> firebaseDataList)  $default,) {final _that = this;
switch (_that) {
case _$productState():
return $default(_that.isloading,_that.issuccess,_that.isfailure,_that.errormessage,_that.DataList,_that.firebaseDataList);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isloading,  bool issuccess,  bool isfailure,  String errormessage,  List<ProductEntity> DataList,  List<Firebaseproductentity> firebaseDataList)?  $default,) {final _that = this;
switch (_that) {
case _$productState() when $default != null:
return $default(_that.isloading,_that.issuccess,_that.isfailure,_that.errormessage,_that.DataList,_that.firebaseDataList);case _:
  return null;

}
}

}

/// @nodoc


class _$productState implements ProductState {
  const _$productState({this.isloading = false, this.issuccess = false, this.isfailure = false, this.errormessage = '', final  List<ProductEntity> DataList = const [], final  List<Firebaseproductentity> firebaseDataList = const []}): _DataList = DataList,_firebaseDataList = firebaseDataList;
  

@override@JsonKey() final  bool isloading;
@override@JsonKey() final  bool issuccess;
@override@JsonKey() final  bool isfailure;
@override@JsonKey() final  String errormessage;
 final  List<ProductEntity> _DataList;
@override@JsonKey() List<ProductEntity> get DataList {
  if (_DataList is EqualUnmodifiableListView) return _DataList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_DataList);
}

 final  List<Firebaseproductentity> _firebaseDataList;
@override@JsonKey() List<Firebaseproductentity> get firebaseDataList {
  if (_firebaseDataList is EqualUnmodifiableListView) return _firebaseDataList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_firebaseDataList);
}


/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$$productStateCopyWith<_$productState> get copyWith => __$$productStateCopyWithImpl<_$productState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$productState&&(identical(other.isloading, isloading) || other.isloading == isloading)&&(identical(other.issuccess, issuccess) || other.issuccess == issuccess)&&(identical(other.isfailure, isfailure) || other.isfailure == isfailure)&&(identical(other.errormessage, errormessage) || other.errormessage == errormessage)&&const DeepCollectionEquality().equals(other._DataList, _DataList)&&const DeepCollectionEquality().equals(other._firebaseDataList, _firebaseDataList));
}


@override
int get hashCode => Object.hash(runtimeType,isloading,issuccess,isfailure,errormessage,const DeepCollectionEquality().hash(_DataList),const DeepCollectionEquality().hash(_firebaseDataList));

@override
String toString() {
  return 'ProductState(isloading: $isloading, issuccess: $issuccess, isfailure: $isfailure, errormessage: $errormessage, DataList: $DataList, firebaseDataList: $firebaseDataList)';
}


}

/// @nodoc
abstract mixin class _$$productStateCopyWith<$Res> implements $ProductStateCopyWith<$Res> {
  factory _$$productStateCopyWith(_$productState value, $Res Function(_$productState) _then) = __$$productStateCopyWithImpl;
@override @useResult
$Res call({
 bool isloading, bool issuccess, bool isfailure, String errormessage, List<ProductEntity> DataList, List<Firebaseproductentity> firebaseDataList
});




}
/// @nodoc
class __$$productStateCopyWithImpl<$Res>
    implements _$$productStateCopyWith<$Res> {
  __$$productStateCopyWithImpl(this._self, this._then);

  final _$productState _self;
  final $Res Function(_$productState) _then;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isloading = null,Object? issuccess = null,Object? isfailure = null,Object? errormessage = null,Object? DataList = null,Object? firebaseDataList = null,}) {
  return _then(_$productState(
isloading: null == isloading ? _self.isloading : isloading // ignore: cast_nullable_to_non_nullable
as bool,issuccess: null == issuccess ? _self.issuccess : issuccess // ignore: cast_nullable_to_non_nullable
as bool,isfailure: null == isfailure ? _self.isfailure : isfailure // ignore: cast_nullable_to_non_nullable
as bool,errormessage: null == errormessage ? _self.errormessage : errormessage // ignore: cast_nullable_to_non_nullable
as String,DataList: null == DataList ? _self._DataList : DataList // ignore: cast_nullable_to_non_nullable
as List<ProductEntity>,firebaseDataList: null == firebaseDataList ? _self._firebaseDataList : firebaseDataList // ignore: cast_nullable_to_non_nullable
as List<Firebaseproductentity>,
  ));
}


}

// dart format on
