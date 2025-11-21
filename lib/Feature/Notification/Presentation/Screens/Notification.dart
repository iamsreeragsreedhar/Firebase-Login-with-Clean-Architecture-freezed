import 'dart:developer';

import 'package:fire_bse/Feature/Notification/Presentation/bloc/notification/notification_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  void initState() {
    super.initState();

    /// Start FCM token fetch
    context.read<NotificationBloc>().add(Gettoken());

    /// Start listening to foreground notifications
    context.read<NotificationBloc>().add(ListenNotificationEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Notifications")),
      body: BlocConsumer<NotificationBloc, NotificationState>(
        listener: (context, state) {
          /// Show notification popup when notification received
          if (state.Notstate == notifyState.Notification_recieved &&
              state.notification != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  "🔔 ${state.notification!.title ?? ''}\n${state.notification!.body ?? ''}",
                ),
              ),
            );
          }
        },
        builder: (context, state) {
          log("state in notification page ${state.notification}");
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 🔵 LOADING
                if (state.isLoading)
                  const Center(child: CircularProgressIndicator()),

                // ✔ TOKEN DISPLAY
                const Text(
                  "Your FCM Token:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SelectableText(
                  state.fcmToken.isNotEmpty
                      ? state.fcmToken
                      : "Fetching token...",
                  style: const TextStyle(fontSize: 14, color: Colors.black87),
                ),

                const SizedBox(height: 20),

                //  LAST RECEIVED NOTIFICATION
                const SizedBox(height: 10),

                Expanded(
                  child: ListView.builder(
                    itemCount: state.notificationList.length,
                    itemBuilder: (context, index) {
                      final notification = state.notificationList[index];
                      return ListTile(
                        title: Text(notification.title ?? "No title"),
                        subtitle: Text(notification.body ?? "No content"),
                      );
                    },
                  ),
                ),

                // Container(
                //   padding: const EdgeInsets.all(14),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(12),
                //     color: Colors.grey.shade200,
                //   ),
                //   child: state.notification == null
                //       ? const Text("No notifications received yet")
                //       : Column(
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             Text(
                //               state.notification!.title ?? "No title",
                //               style: const TextStyle(
                //                 fontSize: 16,
                //                 fontWeight: FontWeight.bold,
                //               ),
                //             ),
                //             const SizedBox(height: 6),
                //             Text(
                //               state.notification!.body ?? "No content",
                //               style: const TextStyle(fontSize: 14),
                //             ),
                //           ],
                //         ),
                // ),
                const SizedBox(height: 20),

                // ❌ ERROR MESSAGE
                if (state.Notstate == notifyState.error)
                  Text(
                    "Error: ${state.errorMessage}",
                    style: const TextStyle(color: Colors.red),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
