
import 'package:fire_bse/Feature/auth/Domain/Repository/auth_repository.dart';
import 'package:fire_bse/Feature/auth/Domain/entity/signup_entity.dart';

class SignupUsecase {
  final auth_repository repository;
  SignupUsecase({required this.repository});
  Future<void> Signup(SignupEntity entity) {
    return repository.Signup(entity);
  }
}
