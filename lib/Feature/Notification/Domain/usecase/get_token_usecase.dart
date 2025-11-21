import 'package:fire_bse/Feature/Notification/Domain/repository/notification_repository.dart';

class GetTokenUsecase {
  final NotificationRepository notifyrepo;

  GetTokenUsecase({required this.notifyrepo});
  Future<String?> gettoken() async {
    return await notifyrepo.getToken();
  }
}
