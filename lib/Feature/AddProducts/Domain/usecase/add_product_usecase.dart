import 'package:fire_bse/Feature/AddProducts/Domain/entity/product_enttiy.dart';
import 'package:fire_bse/Feature/AddProducts/Domain/repositotry/add_product_repository.dart';

class AddProductUsecase {
  final AddProductRepository respository;

  AddProductUsecase({required this.respository});
  Future<void> AddNewProducts(AddProductEnttiy entity) {
    return respository.Addproducts(entity);
  }
}
