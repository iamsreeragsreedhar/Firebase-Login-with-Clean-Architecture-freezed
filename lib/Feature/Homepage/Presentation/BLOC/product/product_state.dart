part of 'product_bloc.dart';

@freezed
abstract class ProductState with _$ProductState {
  const factory ProductState({
@Default(false) bool isloading,
@Default(false)bool issuccess,
@Default(false)bool isfailure,
@Default('') String errormessage,
@Default([]) List<ProductEntity>DataList,
@Default([]) List<Firebaseproductentity>firebaseDataList
 })=_$productState;
 
}