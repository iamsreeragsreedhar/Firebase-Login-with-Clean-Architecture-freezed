import 'package:bloc/bloc.dart';
import 'package:fire_bse/Feature/AddProducts/Domain/entity/product_enttiy.dart';
import 'package:fire_bse/Feature/AddProducts/Domain/usecase/add_product_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'addproduct_state.dart';
part 'addproduct_event.dart';
part 'addproduct_bloc.freezed.dart';

class AddproductBloc extends Bloc<AddproductEvent, AddproductState> {
  final AddProductUsecase usecase;
  AddproductBloc(this.usecase) : super( AddproductState()) {
    on<AddproductEvent>(_addnewproducts);
  }

  _addnewproducts(AddproductEvent event, Emitter<AddproductState> emit) async {
    emit(state.copyWith(isloadng: true, productstate: addProdcutState.loading));
    try {
      await usecase.AddNewProducts(event.entity);
      emit(
        state.copyWith(
          iserror: false,
          isloadng: false,
          issuccess: true,
          msg: "Product saved Successfully...",
          productstate: addProdcutState.addproductadded,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          iserror: true,
          isloadng: false,
          issuccess: false,
          msg: e.toString(),
        ),
      );
    }
  }
}
