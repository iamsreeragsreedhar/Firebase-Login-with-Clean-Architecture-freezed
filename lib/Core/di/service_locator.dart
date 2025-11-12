import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fire_bse/Feature/Homepage/Data/Datasource/product_datasource.dart';
import 'package:fire_bse/Feature/Homepage/Data/repository/product_repository_impl.dart';
import 'package:fire_bse/Feature/Homepage/Domain/repository/product_repository.dart';
import 'package:fire_bse/Feature/Homepage/Domain/usecase/product_usecase.dart';
import 'package:fire_bse/Feature/Homepage/Presentation/BLOC/product/product_bloc.dart';
import 'package:fire_bse/Feature/auth/Data/repository/auth_repository_impl.dart';
import 'package:fire_bse/Feature/auth/Domain/Repository/auth_repository.dart';
import 'package:fire_bse/Feature/auth/Domain/usecase/google_signin_usecase.dart';
import 'package:fire_bse/Feature/auth/Domain/usecase/login_usecase.dart';

import 'package:fire_bse/Feature/auth/Domain/usecase/signnup_usecase.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.instance;

Future<void> init() async {
  ////// for getting forebase instance
  sl.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
  ////// for getting firestore instance
  sl.registerLazySingleton<FirebaseFirestore>(() => FirebaseFirestore.instance);
  ////////////////// for getting instance of repository impl instance
  sl.registerLazySingleton<auth_repository>(
    () => SignupRepositoryimpl(auth: sl(), firestore: sl()),
  );
  ////////////////// for getting instance of Signup usecase
  sl.registerLazySingleton<SignupUsecase>(
    () => SignupUsecase(repository: sl()),
  );
  ////////////////// for getting instance of Login usecase
  sl.registerLazySingleton<Loginusecase>(() => Loginusecase(repository: sl()));
  ////////////////// for getting instance of google Signin usecase
  sl.registerLazySingleton<GoogleSigninUsecase>(
    () => GoogleSigninUsecase(sl()),
  );

  /////////Product Listing

  /////Http client
  sl.registerLazySingleton(() => http.Client());

  ///productusecase
  sl.registerLazySingleton<ProductUsecase>(
    () => ProductUsecase(productrepository: sl()),
  );

  ///////repository
  sl.registerLazySingleton<ProductRepository>(
    () => ProductRepositoryImpl(datasource: sl()),
  );

  //// datasource
  sl.registerLazySingleton<ProductDatasource>(() => ProductDatasourceImpl());

  ///// Bloc
  sl.registerFactory(() => ProductBloc(sl()));
}
