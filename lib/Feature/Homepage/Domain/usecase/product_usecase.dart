import 'package:fire_bse/Core/Errors/failures.dart';
import 'package:fire_bse/Feature/Homepage/Domain/Entity/product_entity.dart';
import 'package:fire_bse/Feature/Homepage/Domain/repository/product_repository.dart';
import 'package:dartz/dartz.dart';

class ProductUsecase {
  final ProductRepository productrepository;

  ProductUsecase({required this.productrepository});
  Future<Either<failure,List<ProductEntity>>> getProduct(endpoint){
    
    return productrepository.getProduct(endpoint);
  }
}