part of 'addproduct_bloc.dart';

enum addProdcutState { none, loading, addproductadded, error }

@freezed
abstract class AddproductState with _$AddproductState {
  const factory AddproductState({
    @Default(false) bool isloadng,
    @Default(false) bool issuccess,
    @Default(false) bool iserror,
    @Default('') String msg,
    @Default(addProdcutState.none) addProdcutState productstate,
  }) = _AddproductState;
}
