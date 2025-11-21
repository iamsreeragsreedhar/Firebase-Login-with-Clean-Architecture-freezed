import 'package:fire_bse/Feature/Notification/Domain/entity/notification_entity.dart';
import 'package:flutter/cupertino.dart';

class NotificationModel extends NotificationEntity {
  NotificationModel({required super.title, required super.body});

  factory NotificationModel.fromJson(Map<String, dynamic> json) {
    return NotificationModel(
      body: json['body'] ?? "",
      title: json['title'] ?? "",
    );
  }
}
