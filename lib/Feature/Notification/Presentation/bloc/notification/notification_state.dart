part of 'notification_bloc.dart';

enum notifyState {
  none,
  loading,
  token_recieved,
  Notification_recieved,
  old_notification,
  error,
}

@freezed
abstract class NotificationState with _$NotificationState {
  factory NotificationState({
    @Default(false) bool isLoading,
    @Default('') String fcmToken,
    NotificationEntity? notification,
    @Default([]) List<NotificationEntity> notificationList,
    @Default('') String errorMessage,
    @Default(false) bool permissionGranted,
    @Default(notifyState.none) notifyState Notstate,
  }) = _NotificationState;
}
