import 'package:fire_bse/Feature/AddProducts/Data/datasource/addproduct_souce.dart';
import 'package:fire_bse/Feature/AddProducts/Data/model/product_model.dart';
import 'package:fire_bse/Feature/AddProducts/Domain/entity/product_enttiy.dart';
import 'package:fire_bse/Feature/AddProducts/Domain/repositotry/add_product_repository.dart';

class AddRepositoryImpl extends AddProductRepository{
  final AddproductSouce source;

  AddRepositoryImpl({required this.source});
  @override
  Future<void> Addproducts(AddProductEnttiy entity) {
    final Productdetails =AddProductModel(
      descption: entity.descption,
      image: entity.image,
      name: entity.name,
      price: entity.price
    );
    return source.addproducts(Productdetails);
  }
}