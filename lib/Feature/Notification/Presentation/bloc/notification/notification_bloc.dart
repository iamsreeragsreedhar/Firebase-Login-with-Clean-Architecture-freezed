// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fire_bse/Core/notification/local_notification.dart';
import 'package:fire_bse/Feature/Notification/Domain/usecase/listen_notification_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:fire_bse/Feature/Notification/Domain/entity/notification_entity.dart';
import 'package:fire_bse/Feature/Notification/Domain/usecase/get_token_usecase.dart';

part 'notification_bloc.freezed.dart';
part 'notification_event.dart';
part 'notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final GetTokenUsecase gettoken;
  final listennotficationUsecase listennotify;
  StreamSubscription? _subscription;
  NotificationBloc(this.gettoken, this.listennotify)
    : super(NotificationState()) {
    on<Gettoken>(_gettoken);
    // on<ListenNotificationEvent>(_listernNotification);
    on<ListenNotificationEvent>(_listenNotification);
  }

  _gettoken(Gettoken event, Emitter<NotificationState> emit) async {
    print("inside");
    emit(
      state.copyWith(
        isLoading: true,
        Notstate: notifyState.loading,
        fcmToken: "",
      ),
    );
    try {
      final token = await gettoken.gettoken();
      emit(
        state.copyWith(
          isLoading: false,
          fcmToken: token!,
          Notstate: notifyState.token_recieved,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
          fcmToken: "",
          Notstate: notifyState.error,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> _listenNotification(
    ListenNotificationEvent event,
    Emitter<NotificationState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, Notstate: notifyState.loading));

    await emit.forEach(
      listennotify.listenNotifications(),
      onData: (notification) {
        appNotificationService.showNotification(
          body: notification.body ?? "",
          title: notification.title ?? "",
        );
        return state.copyWith(
          isLoading: false,
          notification: notification,
          notificationList: [...state.notificationList, notification],
          Notstate: notifyState.Notification_recieved,
        );
      },
      onError: (error, stack) {
        return state.copyWith(
          isLoading: false,
          Notstate: notifyState.error,
          errorMessage: error.toString(),
        );
      },
    );
  }

  // Future<void> _listernNotification(
  //   ListenNotificationEvent event,
  //   Emitter<NotificationState> emit,
  // ) async {
  //   print("inside _listernNotification");
  //   emit(state.copyWith(isLoading: true, Notstate: notifyState.loading));
  //   print("inside after loading");
  //  _subscription=  listennotify.listenNotifications().listen(
  //     ( notification) {
  //       print("notification recieved in bloc ${notification.title}");
  //       print("notification recieved in bloc ${notification.body}");
  //       emit(
  //         state.copyWith(
  //           isLoading: false,
  //           notification: notification,
  //           Notstate: notifyState.Notification_recieved,
  //         ),
  //       );
  //     },
  //     onError: (error) {
  //       print("notification  error $error");
  //       emit(
  //         state.copyWith(
  //           Notstate: notifyState.error,
  //           errorMessage: error.toString(),
  //           isLoading: false,
  //         ),
  //       );
  //     },
  //   );
  // }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
