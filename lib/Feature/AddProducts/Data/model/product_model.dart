import 'package:fire_bse/Feature/AddProducts/Domain/entity/product_enttiy.dart';

class AddProductModel extends AddProductEnttiy {
  AddProductModel({
    required super.name,
    required super.descption,
    required super.image,
    required super.price,
  });

  factory AddProductModel.fromJson(Map<String, dynamic> json) {
    return AddProductModel(
      name: json['productname'] ?? " ",
      descption: json['description'] ?? "",
      price: json['price'] ?? " ",
      image: json['image'] ?? " ",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "description": descption,
      "price": price,
      "image": image,
    };
  }
}
