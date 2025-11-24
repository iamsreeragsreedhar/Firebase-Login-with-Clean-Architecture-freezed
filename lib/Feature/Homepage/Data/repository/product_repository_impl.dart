import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:fire_bse/Core/Errors/failures.dart';
import 'package:fire_bse/Feature/Homepage/Data/Datasource/product_datasource.dart';
import 'package:fire_bse/Feature/Homepage/Data/Model/product_model.dart';
import 'package:fire_bse/Feature/Homepage/Domain/Entity/Firebaseproductentity.dart';
import 'package:fire_bse/Feature/Homepage/Domain/Entity/product_entity.dart';
import 'package:fire_bse/Feature/Homepage/Domain/repository/product_repository.dart';

class ProductRepositoryImpl extends ProductRepository {
  final ProductDatasource datasource;

  ProductRepositoryImpl({required this.datasource});
  @override
  Future<Either<failure, List<ProductEntity>>> getProduct(endpoint) async {
    try {
      List<ProductEntity> result = [];

      result = await datasource.getProduct(endpoint);
      if (result is List<ProductEntity>) {
        log("inside the repository impl");
        return Right(result);
      }
    } catch (e) {
      return Left(failure(message: e.toString()));
    }
  }

  @override
  Future<Either<failure, List<Firebaseproductentity>>> getProductfrombase() async {
    try {
      final result = await datasource.getProductFrombase();
      return Right(result);
    } catch (e) {
      return Left(failure(message: e.toString()));
    }
  }
}
