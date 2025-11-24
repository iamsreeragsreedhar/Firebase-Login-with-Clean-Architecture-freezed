import 'package:fire_bse/Core/Errors/failures.dart';
import 'package:fire_bse/Feature/Homepage/Domain/Entity/Firebaseproductentity.dart';
import 'package:fire_bse/Feature/Homepage/Domain/Entity/product_entity.dart';
import 'package:fire_bse/Feature/Homepage/Domain/repository/product_repository.dart';
import 'package:fire_bse/Feature/Homepage/Domain/usecase/product_usecase.dart';
import 'package:dartz/dartz.dart';

class FirebseProductsUsecase {
  final ProductRepository repo;

  FirebseProductsUsecase({required this.repo});

  Future<Either<failure,List<Firebaseproductentity>>>getproductfromBase(){
    return repo.getProductfrombase();
  }
  
}