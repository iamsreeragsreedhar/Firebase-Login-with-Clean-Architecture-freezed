import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fire_bse/Feature/AddProducts/Data/model/product_model.dart';

abstract class AddproductSouce {
  Future<void> addproducts(AddProductModel product);
}

class AddproductSouceImpl extends AddproductSouce {
  final FirebaseFirestore firestore;

  AddproductSouceImpl({required this.firestore});
  @override
  Future<void> addproducts(AddProductModel product) async {
    final docref = await firestore.collection("product").doc(product.name);
    await docref.set(product.toJson());
  }
}
