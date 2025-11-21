import 'package:fire_bse/Feature/Notification/Data/dataSource/notification_souce.dart';
import 'package:fire_bse/Feature/Notification/Domain/entity/notification_entity.dart';
import 'package:fire_bse/Feature/Notification/Domain/repository/notification_repository.dart';

class NotificationRepoImpl implements NotificationRepository {
  final NotificationSouce notificationSouce;

  NotificationRepoImpl({required this.notificationSouce});

  @override
  Future<String?> getToken() async {
    return await notificationSouce.gettoKen();
  }

  @override
  Stream<NotificationEntity> listenNotification() {
    return notificationSouce.listenNotification();
  }
}
