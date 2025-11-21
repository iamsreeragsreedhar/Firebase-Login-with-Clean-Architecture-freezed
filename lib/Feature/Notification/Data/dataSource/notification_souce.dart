import 'dart:developer';

import 'package:fire_bse/Feature/Notification/Data/model/notification_model.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

abstract class NotificationSouce {
  Future<String?> gettoKen();
  Stream<NotificationModel> listenNotification();
}

class NotificationSouceImpl implements NotificationSouce {
  final FirebaseMessaging firebasemsg;

  NotificationSouceImpl({required this.firebasemsg});

  @override
  Future<String?> gettoKen() async {
    final token = await firebasemsg.getToken();
    log("📌 Device FCM Token: $token");
    return token;
  }

  @override
  Stream<NotificationModel> listenNotification() {
    return FirebaseMessaging.onMessage.map((message) {
      final title = message.notification?.title;
      final body = message.notification?.body;
      return NotificationModel(title: title, body: body);
    });
  }
}
