import 'dart:convert';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fire_bse/Core/network/api_client.dart';
import 'package:fire_bse/Feature/Homepage/Data/Model/firebaseproduct_model.dart';
import 'package:fire_bse/Feature/Homepage/Data/Model/product_model.dart';

abstract class ProductDatasource {
  Future<dynamic> getProduct(endpoint);
  Future<List<FirebaseproductModel>> getProductFrombase();
}

class ProductDatasourceImpl extends ProductDatasource {
  final FirebaseFirestore store;

  ProductDatasourceImpl({required this.store});
  @override
  Future getProduct(endpoint) async {
    try {
      final response = await ApiClient().Productget(endpoint);
      if (response.statusCode == 200) {
        final result = response.body;
        List data = json.decode(result);
        log("inside the datasource impl");
        return (data).map((json) => ProductModel.fromJson(json)).toList();
      } else {
        print('error in else case');
      }
    } catch (e) {
      throw Exception("Failed to load products");
    }
  }

  @override
  Future<List<FirebaseproductModel>> getProductFrombase() async {
    try {
      final product = await store.collection("product").get();
      log("total docs: ${product.docs.length}");
      for (var doc in product.docs) {
        log("doc data: ${doc.data()}");
      }
      return product.docs
          .map((doc) => FirebaseproductModel.fromJson(doc.data()))
          .toList();
    } catch (e) {
      throw Exception("Failed to load products from firebase");
    }
  }
}
