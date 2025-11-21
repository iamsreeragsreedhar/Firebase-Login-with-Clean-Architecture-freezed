import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class appNotificationService {
  static final FlutterLocalNotificationsPlugin _plugin =
      FlutterLocalNotificationsPlugin();
 static Future<void> initialize() async {
    const AndroidInitializationSettings android = AndroidInitializationSettings('@mipmap/ic_launcher');
    const InitializationSettings settings = InitializationSettings(android: android);
    await _plugin.initialize(settings);
  }

  static Future<void> showNotification(
      {required String title, required String body}) async {
    const androidDetails = AndroidNotificationDetails(
      'fire_bse_channel',
      'Fire BSE Notifications',
      importance: Importance.max,
      priority: Priority.high,
    );
    const notificationDetails = NotificationDetails(android: androidDetails);
    await _plugin.show(0, title, body, notificationDetails);
  }
}
