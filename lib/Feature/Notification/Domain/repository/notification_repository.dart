import 'package:fire_bse/Feature/Notification/Domain/entity/notification_entity.dart';

abstract class NotificationRepository {
  Future<String?>getToken();
  Stream<NotificationEntity>listenNotification();
}