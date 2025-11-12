// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignupEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignupEvent()';
}


}

/// @nodoc
class $SignupEventCopyWith<$Res>  {
$SignupEventCopyWith(SignupEvent _, $Res Function(SignupEvent) __);
}


/// Adds pattern-matching-related methods to [SignupEvent].
extension SignupEventPatterns on SignupEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SignupPressed value)?  signupPressed,TResult Function( LoginPressed value)?  loginPressed,TResult Function( GoogleSignIn value)?  googleSignIn,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SignupPressed() when signupPressed != null:
return signupPressed(_that);case LoginPressed() when loginPressed != null:
return loginPressed(_that);case GoogleSignIn() when googleSignIn != null:
return googleSignIn(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SignupPressed value)  signupPressed,required TResult Function( LoginPressed value)  loginPressed,required TResult Function( GoogleSignIn value)  googleSignIn,}){
final _that = this;
switch (_that) {
case SignupPressed():
return signupPressed(_that);case LoginPressed():
return loginPressed(_that);case GoogleSignIn():
return googleSignIn(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SignupPressed value)?  signupPressed,TResult? Function( LoginPressed value)?  loginPressed,TResult? Function( GoogleSignIn value)?  googleSignIn,}){
final _that = this;
switch (_that) {
case SignupPressed() when signupPressed != null:
return signupPressed(_that);case LoginPressed() when loginPressed != null:
return loginPressed(_that);case GoogleSignIn() when googleSignIn != null:
return googleSignIn(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( dynamic email,  dynamic password,  dynamic displayname)?  signupPressed,TResult Function( dynamic email,  dynamic password)?  loginPressed,TResult Function()?  googleSignIn,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SignupPressed() when signupPressed != null:
return signupPressed(_that.email,_that.password,_that.displayname);case LoginPressed() when loginPressed != null:
return loginPressed(_that.email,_that.password);case GoogleSignIn() when googleSignIn != null:
return googleSignIn();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( dynamic email,  dynamic password,  dynamic displayname)  signupPressed,required TResult Function( dynamic email,  dynamic password)  loginPressed,required TResult Function()  googleSignIn,}) {final _that = this;
switch (_that) {
case SignupPressed():
return signupPressed(_that.email,_that.password,_that.displayname);case LoginPressed():
return loginPressed(_that.email,_that.password);case GoogleSignIn():
return googleSignIn();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( dynamic email,  dynamic password,  dynamic displayname)?  signupPressed,TResult? Function( dynamic email,  dynamic password)?  loginPressed,TResult? Function()?  googleSignIn,}) {final _that = this;
switch (_that) {
case SignupPressed() when signupPressed != null:
return signupPressed(_that.email,_that.password,_that.displayname);case LoginPressed() when loginPressed != null:
return loginPressed(_that.email,_that.password);case GoogleSignIn() when googleSignIn != null:
return googleSignIn();case _:
  return null;

}
}

}

/// @nodoc


class SignupPressed implements SignupEvent {
  const SignupPressed(this.email, this.password, this.displayname);
  

 final  dynamic email;
 final  dynamic password;
 final  dynamic displayname;

/// Create a copy of SignupEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupPressedCopyWith<SignupPressed> get copyWith => _$SignupPressedCopyWithImpl<SignupPressed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupPressed&&const DeepCollectionEquality().equals(other.email, email)&&const DeepCollectionEquality().equals(other.password, password)&&const DeepCollectionEquality().equals(other.displayname, displayname));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(email),const DeepCollectionEquality().hash(password),const DeepCollectionEquality().hash(displayname));

@override
String toString() {
  return 'SignupEvent.signupPressed(email: $email, password: $password, displayname: $displayname)';
}


}

/// @nodoc
abstract mixin class $SignupPressedCopyWith<$Res> implements $SignupEventCopyWith<$Res> {
  factory $SignupPressedCopyWith(SignupPressed value, $Res Function(SignupPressed) _then) = _$SignupPressedCopyWithImpl;
@useResult
$Res call({
 dynamic email, dynamic password, dynamic displayname
});




}
/// @nodoc
class _$SignupPressedCopyWithImpl<$Res>
    implements $SignupPressedCopyWith<$Res> {
  _$SignupPressedCopyWithImpl(this._self, this._then);

  final SignupPressed _self;
  final $Res Function(SignupPressed) _then;

/// Create a copy of SignupEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = freezed,Object? password = freezed,Object? displayname = freezed,}) {
  return _then(SignupPressed(
freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as dynamic,freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as dynamic,freezed == displayname ? _self.displayname : displayname // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

/// @nodoc


class LoginPressed implements SignupEvent {
  const LoginPressed(this.email, this.password);
  

 final  dynamic email;
 final  dynamic password;

/// Create a copy of SignupEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginPressedCopyWith<LoginPressed> get copyWith => _$LoginPressedCopyWithImpl<LoginPressed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginPressed&&const DeepCollectionEquality().equals(other.email, email)&&const DeepCollectionEquality().equals(other.password, password));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(email),const DeepCollectionEquality().hash(password));

@override
String toString() {
  return 'SignupEvent.loginPressed(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $LoginPressedCopyWith<$Res> implements $SignupEventCopyWith<$Res> {
  factory $LoginPressedCopyWith(LoginPressed value, $Res Function(LoginPressed) _then) = _$LoginPressedCopyWithImpl;
@useResult
$Res call({
 dynamic email, dynamic password
});




}
/// @nodoc
class _$LoginPressedCopyWithImpl<$Res>
    implements $LoginPressedCopyWith<$Res> {
  _$LoginPressedCopyWithImpl(this._self, this._then);

  final LoginPressed _self;
  final $Res Function(LoginPressed) _then;

/// Create a copy of SignupEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = freezed,Object? password = freezed,}) {
  return _then(LoginPressed(
freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as dynamic,freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

/// @nodoc


class GoogleSignIn implements SignupEvent {
  const GoogleSignIn();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoogleSignIn);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignupEvent.googleSignIn()';
}


}




/// @nodoc
mixin _$SignupState {

 bool? get Issuccess; bool? get Isloading; bool? get Isfailure; String get Errormessage;
/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupStateCopyWith<SignupState> get copyWith => _$SignupStateCopyWithImpl<SignupState>(this as SignupState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupState&&(identical(other.Issuccess, Issuccess) || other.Issuccess == Issuccess)&&(identical(other.Isloading, Isloading) || other.Isloading == Isloading)&&(identical(other.Isfailure, Isfailure) || other.Isfailure == Isfailure)&&(identical(other.Errormessage, Errormessage) || other.Errormessage == Errormessage));
}


@override
int get hashCode => Object.hash(runtimeType,Issuccess,Isloading,Isfailure,Errormessage);

@override
String toString() {
  return 'SignupState(Issuccess: $Issuccess, Isloading: $Isloading, Isfailure: $Isfailure, Errormessage: $Errormessage)';
}


}

/// @nodoc
abstract mixin class $SignupStateCopyWith<$Res>  {
  factory $SignupStateCopyWith(SignupState value, $Res Function(SignupState) _then) = _$SignupStateCopyWithImpl;
@useResult
$Res call({
 bool? Issuccess, bool? Isloading, bool? Isfailure, String Errormessage
});




}
/// @nodoc
class _$SignupStateCopyWithImpl<$Res>
    implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._self, this._then);

  final SignupState _self;
  final $Res Function(SignupState) _then;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? Issuccess = freezed,Object? Isloading = freezed,Object? Isfailure = freezed,Object? Errormessage = null,}) {
  return _then(_self.copyWith(
Issuccess: freezed == Issuccess ? _self.Issuccess : Issuccess // ignore: cast_nullable_to_non_nullable
as bool?,Isloading: freezed == Isloading ? _self.Isloading : Isloading // ignore: cast_nullable_to_non_nullable
as bool?,Isfailure: freezed == Isfailure ? _self.Isfailure : Isfailure // ignore: cast_nullable_to_non_nullable
as bool?,Errormessage: null == Errormessage ? _self.Errormessage : Errormessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SignupState].
extension SignupStatePatterns on SignupState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _$signupState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _$signupState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _$signupState value)  $default,){
final _that = this;
switch (_that) {
case _$signupState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _$signupState value)?  $default,){
final _that = this;
switch (_that) {
case _$signupState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? Issuccess,  bool? Isloading,  bool? Isfailure,  String Errormessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _$signupState() when $default != null:
return $default(_that.Issuccess,_that.Isloading,_that.Isfailure,_that.Errormessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? Issuccess,  bool? Isloading,  bool? Isfailure,  String Errormessage)  $default,) {final _that = this;
switch (_that) {
case _$signupState():
return $default(_that.Issuccess,_that.Isloading,_that.Isfailure,_that.Errormessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? Issuccess,  bool? Isloading,  bool? Isfailure,  String Errormessage)?  $default,) {final _that = this;
switch (_that) {
case _$signupState() when $default != null:
return $default(_that.Issuccess,_that.Isloading,_that.Isfailure,_that.Errormessage);case _:
  return null;

}
}

}

/// @nodoc


class _$signupState implements SignupState {
   _$signupState({this.Issuccess = false, this.Isloading = false, this.Isfailure = false, this.Errormessage = ''});
  

@override@JsonKey() final  bool? Issuccess;
@override@JsonKey() final  bool? Isloading;
@override@JsonKey() final  bool? Isfailure;
@override@JsonKey() final  String Errormessage;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$$signupStateCopyWith<_$signupState> get copyWith => __$$signupStateCopyWithImpl<_$signupState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$signupState&&(identical(other.Issuccess, Issuccess) || other.Issuccess == Issuccess)&&(identical(other.Isloading, Isloading) || other.Isloading == Isloading)&&(identical(other.Isfailure, Isfailure) || other.Isfailure == Isfailure)&&(identical(other.Errormessage, Errormessage) || other.Errormessage == Errormessage));
}


@override
int get hashCode => Object.hash(runtimeType,Issuccess,Isloading,Isfailure,Errormessage);

@override
String toString() {
  return 'SignupState(Issuccess: $Issuccess, Isloading: $Isloading, Isfailure: $Isfailure, Errormessage: $Errormessage)';
}


}

/// @nodoc
abstract mixin class _$$signupStateCopyWith<$Res> implements $SignupStateCopyWith<$Res> {
  factory _$$signupStateCopyWith(_$signupState value, $Res Function(_$signupState) _then) = __$$signupStateCopyWithImpl;
@override @useResult
$Res call({
 bool? Issuccess, bool? Isloading, bool? Isfailure, String Errormessage
});




}
/// @nodoc
class __$$signupStateCopyWithImpl<$Res>
    implements _$$signupStateCopyWith<$Res> {
  __$$signupStateCopyWithImpl(this._self, this._then);

  final _$signupState _self;
  final $Res Function(_$signupState) _then;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? Issuccess = freezed,Object? Isloading = freezed,Object? Isfailure = freezed,Object? Errormessage = null,}) {
  return _then(_$signupState(
Issuccess: freezed == Issuccess ? _self.Issuccess : Issuccess // ignore: cast_nullable_to_non_nullable
as bool?,Isloading: freezed == Isloading ? _self.Isloading : Isloading // ignore: cast_nullable_to_non_nullable
as bool?,Isfailure: freezed == Isfailure ? _self.Isfailure : Isfailure // ignore: cast_nullable_to_non_nullable
as bool?,Errormessage: null == Errormessage ? _self.Errormessage : Errormessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
