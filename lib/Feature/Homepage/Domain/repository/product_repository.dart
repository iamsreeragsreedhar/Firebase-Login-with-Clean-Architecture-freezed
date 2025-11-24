import 'package:bloc_firebase_auth_kit/bloc_firebase_auth_kit.dart';
import 'package:fire_bse/Core/Errors/failures.dart';
import 'package:fire_bse/Feature/Homepage/Domain/Entity/Firebaseproductentity.dart';
import 'package:fire_bse/Feature/Homepage/Domain/Entity/product_entity.dart';
import 'package:dartz/dartz.dart';

abstract class ProductRepository {
  Future<Either<failure,List<ProductEntity>>> getProduct(endpoint);
  Future<Either<failure,List<Firebaseproductentity>>> getProductfrombase();
}