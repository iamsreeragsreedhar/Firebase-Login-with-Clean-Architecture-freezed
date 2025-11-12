import 'package:fire_bse/Feature/auth/Domain/Repository/auth_repository.dart';
import 'package:fire_bse/Feature/auth/Domain/entity/login_entity.dart';

class Loginusecase {
  final auth_repository repository;
  Loginusecase({required this.repository});

  Future<void> Login(LoginEntity entity) {
    return repository.Login(entity);
  }
}
