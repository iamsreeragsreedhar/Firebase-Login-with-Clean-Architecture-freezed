import 'package:fire_bse/Feature/AddProducts/Domain/entity/product_enttiy.dart';

class AddProductModel extends AddProductEnttiy {
  AddProductModel({
    required super.name,
    required super.descption,
    required super.imageUrl,
    required super.price,
  });

  factory AddProductModel.fromJson(Map<String, dynamic> json) {
    return AddProductModel(
      name: json['productname'] ?? " ",
      descption: json['description'] ?? "",
      price: json['price'] ?? " ",
      imageUrl: json['imageurl'] ?? " ",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "description": descption,
      "price": price,
      "imageurl": imageUrl,
    };
  }
}
