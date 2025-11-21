part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.getToken() = Gettoken;
  const factory NotificationEvent.listenNotificationEvent() = ListenNotificationEvent;
}