part of 'addproduct_bloc.dart';

@freezed
abstract class AddproductEvent with _$AddproductEvent {
     factory AddproductEvent.addNewProducts(AddProductEnttiy entity) = AddNewProducts;
}