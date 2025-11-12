import '../../Domain/Entity/product_entity.dart';

class ProductModel extends ProductEntity {
  ProductModel(
    super.productId,
    super.name,
    super.description,
    super.price,
    super.unit,
    super.image,
    super.discount,
    super.availability,
    super.brand,
    super.category,
    super.rating,
    super.reviews,
  );

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      json["product_id"].toString(),
      json["name"] ?? "",
      json["description"] ?? "",
      json["price"].toString(),
      json["unit"] ?? "",
      json["image"] ?? "",
      json["discount"].toString(),
      json["availability"].toString(),
      json["brand"] ?? "",
      json["category"] ?? "",
      json["rating"].toString(),
      (json["reviews"] as List<dynamic>? ?? [])
          .map((e) => ReviewModel.fromJson(e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "product_id": productId,
      "name": name,
      "description": description,
      "price": price,
      "unit": unit,
      "image": image,
      "discount": discount,
      "availability": availability,
      "brand": brand,
      "category": category,
      "rating": rating,
      "reviews": reviews.map((e) => (e as ReviewModel).toJson()).toList(),
    };
  }
}

class ReviewModel extends ReviewEntity {
  ReviewModel(super.userId, super.rating, super.comment);

  factory ReviewModel.fromJson(Map<String, dynamic> json) {
    return ReviewModel(
      json["user_id"].toString(),
      json["rating"].toString(),
      json["comment"] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "user_id": userId,
      "rating": rating,
      "comment": comment,
    };
  }
}
