import 'package:fire_bse/Feature/Homepage/Domain/Entity/Firebaseproductentity.dart';

class FirebaseproductModel extends Firebaseproductentity {
  FirebaseproductModel({
    required super.name,
    required super.description,
    required super.image,
    required super.price,
  });

  factory FirebaseproductModel.fromJson(Map<String, dynamic> json) {
    return FirebaseproductModel(
      name: json['name'] ?? "",
      description: json['description'] ?? "",
      image: json['image'] ?? "",
      price: json['price'] ?? "",
    );
  }
}
