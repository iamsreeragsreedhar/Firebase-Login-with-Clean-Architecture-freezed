import 'package:fire_bse/Feature/auth/Domain/entity/login_entity.dart';
import 'package:fire_bse/Feature/auth/Domain/entity/signup_entity.dart';

abstract class auth_repository {
  Future<void>Signup(SignupEntity entity);
  Future<void>Login(LoginEntity entity);
  Future<void>GooglesignIn();
  Future<void>LogOut();
}