// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationEvent()';
}


}

/// @nodoc
class $NotificationEventCopyWith<$Res>  {
$NotificationEventCopyWith(NotificationEvent _, $Res Function(NotificationEvent) __);
}


/// Adds pattern-matching-related methods to [NotificationEvent].
extension NotificationEventPatterns on NotificationEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Gettoken value)?  getToken,TResult Function( ListenNotificationEvent value)?  listenNotificationEvent,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Gettoken() when getToken != null:
return getToken(_that);case ListenNotificationEvent() when listenNotificationEvent != null:
return listenNotificationEvent(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Gettoken value)  getToken,required TResult Function( ListenNotificationEvent value)  listenNotificationEvent,}){
final _that = this;
switch (_that) {
case Gettoken():
return getToken(_that);case ListenNotificationEvent():
return listenNotificationEvent(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Gettoken value)?  getToken,TResult? Function( ListenNotificationEvent value)?  listenNotificationEvent,}){
final _that = this;
switch (_that) {
case Gettoken() when getToken != null:
return getToken(_that);case ListenNotificationEvent() when listenNotificationEvent != null:
return listenNotificationEvent(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getToken,TResult Function()?  listenNotificationEvent,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Gettoken() when getToken != null:
return getToken();case ListenNotificationEvent() when listenNotificationEvent != null:
return listenNotificationEvent();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getToken,required TResult Function()  listenNotificationEvent,}) {final _that = this;
switch (_that) {
case Gettoken():
return getToken();case ListenNotificationEvent():
return listenNotificationEvent();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getToken,TResult? Function()?  listenNotificationEvent,}) {final _that = this;
switch (_that) {
case Gettoken() when getToken != null:
return getToken();case ListenNotificationEvent() when listenNotificationEvent != null:
return listenNotificationEvent();case _:
  return null;

}
}

}

/// @nodoc


class Gettoken implements NotificationEvent {
  const Gettoken();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Gettoken);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationEvent.getToken()';
}


}




/// @nodoc


class ListenNotificationEvent implements NotificationEvent {
  const ListenNotificationEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListenNotificationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationEvent.listenNotificationEvent()';
}


}




/// @nodoc
mixin _$NotificationState {

 bool get isLoading; String get fcmToken; NotificationEntity? get notification; List<NotificationEntity> get notificationList; String get errorMessage; bool get permissionGranted; notifyState get Notstate;
/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationStateCopyWith<NotificationState> get copyWith => _$NotificationStateCopyWithImpl<NotificationState>(this as NotificationState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.fcmToken, fcmToken) || other.fcmToken == fcmToken)&&(identical(other.notification, notification) || other.notification == notification)&&const DeepCollectionEquality().equals(other.notificationList, notificationList)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.permissionGranted, permissionGranted) || other.permissionGranted == permissionGranted)&&(identical(other.Notstate, Notstate) || other.Notstate == Notstate));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,fcmToken,notification,const DeepCollectionEquality().hash(notificationList),errorMessage,permissionGranted,Notstate);

@override
String toString() {
  return 'NotificationState(isLoading: $isLoading, fcmToken: $fcmToken, notification: $notification, notificationList: $notificationList, errorMessage: $errorMessage, permissionGranted: $permissionGranted, Notstate: $Notstate)';
}


}

/// @nodoc
abstract mixin class $NotificationStateCopyWith<$Res>  {
  factory $NotificationStateCopyWith(NotificationState value, $Res Function(NotificationState) _then) = _$NotificationStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, String fcmToken, NotificationEntity? notification, List<NotificationEntity> notificationList, String errorMessage, bool permissionGranted, notifyState Notstate
});




}
/// @nodoc
class _$NotificationStateCopyWithImpl<$Res>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._self, this._then);

  final NotificationState _self;
  final $Res Function(NotificationState) _then;

/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? fcmToken = null,Object? notification = freezed,Object? notificationList = null,Object? errorMessage = null,Object? permissionGranted = null,Object? Notstate = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,fcmToken: null == fcmToken ? _self.fcmToken : fcmToken // ignore: cast_nullable_to_non_nullable
as String,notification: freezed == notification ? _self.notification : notification // ignore: cast_nullable_to_non_nullable
as NotificationEntity?,notificationList: null == notificationList ? _self.notificationList : notificationList // ignore: cast_nullable_to_non_nullable
as List<NotificationEntity>,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,permissionGranted: null == permissionGranted ? _self.permissionGranted : permissionGranted // ignore: cast_nullable_to_non_nullable
as bool,Notstate: null == Notstate ? _self.Notstate : Notstate // ignore: cast_nullable_to_non_nullable
as notifyState,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationState].
extension NotificationStatePatterns on NotificationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationState value)  $default,){
final _that = this;
switch (_that) {
case _NotificationState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationState value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  String fcmToken,  NotificationEntity? notification,  List<NotificationEntity> notificationList,  String errorMessage,  bool permissionGranted,  notifyState Notstate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationState() when $default != null:
return $default(_that.isLoading,_that.fcmToken,_that.notification,_that.notificationList,_that.errorMessage,_that.permissionGranted,_that.Notstate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  String fcmToken,  NotificationEntity? notification,  List<NotificationEntity> notificationList,  String errorMessage,  bool permissionGranted,  notifyState Notstate)  $default,) {final _that = this;
switch (_that) {
case _NotificationState():
return $default(_that.isLoading,_that.fcmToken,_that.notification,_that.notificationList,_that.errorMessage,_that.permissionGranted,_that.Notstate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  String fcmToken,  NotificationEntity? notification,  List<NotificationEntity> notificationList,  String errorMessage,  bool permissionGranted,  notifyState Notstate)?  $default,) {final _that = this;
switch (_that) {
case _NotificationState() when $default != null:
return $default(_that.isLoading,_that.fcmToken,_that.notification,_that.notificationList,_that.errorMessage,_that.permissionGranted,_that.Notstate);case _:
  return null;

}
}

}

/// @nodoc


class _NotificationState implements NotificationState {
   _NotificationState({this.isLoading = false, this.fcmToken = '', this.notification, final  List<NotificationEntity> notificationList = const [], this.errorMessage = '', this.permissionGranted = false, this.Notstate = notifyState.none}): _notificationList = notificationList;
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  String fcmToken;
@override final  NotificationEntity? notification;
 final  List<NotificationEntity> _notificationList;
@override@JsonKey() List<NotificationEntity> get notificationList {
  if (_notificationList is EqualUnmodifiableListView) return _notificationList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_notificationList);
}

@override@JsonKey() final  String errorMessage;
@override@JsonKey() final  bool permissionGranted;
@override@JsonKey() final  notifyState Notstate;

/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationStateCopyWith<_NotificationState> get copyWith => __$NotificationStateCopyWithImpl<_NotificationState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.fcmToken, fcmToken) || other.fcmToken == fcmToken)&&(identical(other.notification, notification) || other.notification == notification)&&const DeepCollectionEquality().equals(other._notificationList, _notificationList)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.permissionGranted, permissionGranted) || other.permissionGranted == permissionGranted)&&(identical(other.Notstate, Notstate) || other.Notstate == Notstate));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,fcmToken,notification,const DeepCollectionEquality().hash(_notificationList),errorMessage,permissionGranted,Notstate);

@override
String toString() {
  return 'NotificationState(isLoading: $isLoading, fcmToken: $fcmToken, notification: $notification, notificationList: $notificationList, errorMessage: $errorMessage, permissionGranted: $permissionGranted, Notstate: $Notstate)';
}


}

/// @nodoc
abstract mixin class _$NotificationStateCopyWith<$Res> implements $NotificationStateCopyWith<$Res> {
  factory _$NotificationStateCopyWith(_NotificationState value, $Res Function(_NotificationState) _then) = __$NotificationStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, String fcmToken, NotificationEntity? notification, List<NotificationEntity> notificationList, String errorMessage, bool permissionGranted, notifyState Notstate
});




}
/// @nodoc
class __$NotificationStateCopyWithImpl<$Res>
    implements _$NotificationStateCopyWith<$Res> {
  __$NotificationStateCopyWithImpl(this._self, this._then);

  final _NotificationState _self;
  final $Res Function(_NotificationState) _then;

/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? fcmToken = null,Object? notification = freezed,Object? notificationList = null,Object? errorMessage = null,Object? permissionGranted = null,Object? Notstate = null,}) {
  return _then(_NotificationState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,fcmToken: null == fcmToken ? _self.fcmToken : fcmToken // ignore: cast_nullable_to_non_nullable
as String,notification: freezed == notification ? _self.notification : notification // ignore: cast_nullable_to_non_nullable
as NotificationEntity?,notificationList: null == notificationList ? _self._notificationList : notificationList // ignore: cast_nullable_to_non_nullable
as List<NotificationEntity>,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,permissionGranted: null == permissionGranted ? _self.permissionGranted : permissionGranted // ignore: cast_nullable_to_non_nullable
as bool,Notstate: null == Notstate ? _self.Notstate : Notstate // ignore: cast_nullable_to_non_nullable
as notifyState,
  ));
}


}

// dart format on
