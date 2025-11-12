import 'package:fire_bse/Feature/auth/Domain/Repository/auth_repository.dart';

class GoogleSigninUsecase {
  final auth_repository repository;
  GoogleSigninUsecase(this.repository);
  Future<void>Googlesignin(){
    return repository.GooglesignIn();
  }
}