import 'package:fire_bse/Feature/Notification/Domain/entity/notification_entity.dart';
import 'package:fire_bse/Feature/Notification/Domain/repository/notification_repository.dart';

class listennotficationUsecase {
  final NotificationRepository notifyrepo;

  listennotficationUsecase({required this.notifyrepo});
  Stream<NotificationEntity> listenNotifications() {
    return notifyrepo.listenNotification();
  }
}
