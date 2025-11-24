import 'package:fire_bse/Core/notification/local_notification.dart';
import 'package:fire_bse/Feature/AddProducts/Presentation/Screens/addnewProduct.dart';
import 'package:fire_bse/Feature/AddProducts/Presentation/addproduct/addproduct_bloc.dart';
import 'package:fire_bse/Feature/Homepage/Presentation/BLOC/product/product_bloc.dart';
import 'package:fire_bse/Feature/Homepage/Presentation/home_page.dart';
import 'package:fire_bse/Feature/Notification/Presentation/Screens/Notification.dart';
import 'package:fire_bse/Feature/Notification/Presentation/bloc/notification/notification_bloc.dart';
import 'package:fire_bse/Feature/auth/Presenation/Screens/Login.dart';
import 'package:fire_bse/core/di/service_locator.dart';
import 'package:fire_bse/Feature/auth/Presenation/Screens/Signup.dart';
import 'package:fire_bse/Feature/auth/Presenation/Screens/bloc/bloc/auth/signup_bloc.dart';
import 'package:fire_bse/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:custom_quick_alert/custom_quick_alert.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await appNotificationService.initialize();
  final plugin = FlutterLocalNotificationsPlugin();
  await plugin
      .resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin
      >()
      ?.requestNotificationsPermission();
  await init();

  runApp(const MyApp());
  CustomQuickAlert.initialize(navigatorKey);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => SignupBloc(sl(), sl(), sl())),
        BlocProvider(create: (_) => ProductBloc(sl(),sl())),
        BlocProvider(create: (_) => NotificationBloc(sl(), sl())),
        BlocProvider(create: (_) => AddproductBloc(sl())),
      ],
      child: MaterialApp(
          navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        // home: NotificationPage(),
        home: Homepage(),
        // home: LoginPage(),
      ),
    );
  }
}
