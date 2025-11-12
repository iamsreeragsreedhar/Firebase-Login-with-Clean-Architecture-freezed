import 'dart:convert';
import 'dart:developer';

import 'package:fire_bse/Core/network/api_client.dart';
import 'package:fire_bse/Feature/Homepage/Data/Model/product_model.dart';

abstract class ProductDatasource {
  Future<dynamic> getProduct(endpoint);
}

class ProductDatasourceImpl extends ProductDatasource {
  @override
  Future getProduct(endpoint) async {
    try {
      final response = await ApiClient().Productget(endpoint);
      if (response.statusCode == 200) {
        final result = response.body;
         List data = json.decode(result);
         log("inside the datasource impl");
        return (data)
            .map((json) => ProductModel.fromJson(json))
            .toList();
      } else {
        print('error in else case');
      }
    } catch (e) {
      throw Exception("Failed to load products");
    }
  }
}
