class ProductEntity {
  final String productId;
  final String name;
  final String description;
  final String price;
  final String unit;
  final String image;
  final String discount;
  final String availability;
  final String brand;
  final String category;
  final String rating;
  final List<ReviewEntity> reviews;

  ProductEntity(
    this.productId,
    this.name,
    this.description,
    this.price,
    this.unit,
    this.image,
    this.discount,
    this.availability,
    this.brand,
    this.category,
    this.rating,
    this.reviews,
  );
}

class ReviewEntity {
  final String userId;
  final String rating;
  final String comment;

  ReviewEntity(this.userId, this.rating, this.comment);
}
