import 'package:fire_bse/Feature/AddProducts/Domain/entity/product_enttiy.dart';

abstract class AddProductRepository {
  Future<void>Addproducts(AddProductEnttiy entity);
}