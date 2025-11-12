// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:fire_bse/Core/Errors/failures.dart';
import 'package:fire_bse/Feature/Homepage/Domain/Entity/product_entity.dart';
import 'package:fire_bse/Feature/Homepage/Domain/usecase/product_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:fire_bse/Feature/Homepage/Data/Datasource/product_datasource.dart';
import 'package:fire_bse/Feature/Homepage/Data/Model/product_model.dart';

part 'product_bloc.freezed.dart';
part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductUsecase usecase;
  ProductBloc(this.usecase) : super(const ProductState()) {
    on<GetProdcts>(_getProducts);
  }
  _getProducts(GetProdcts event, Emitter<ProductState> emit) async {
    emit(state.copyWith(isloading: true));
    try {
      final result = await usecase.getProduct(event.endpoints);
      print("data OF BLOC $result");
      result.fold(
        (failure) {
          log("failure");
            print("ERROR → ${failure.message}");
          emit(
            state.copyWith(
              isloading: false,
              DataList: [],
              issuccess: false,
              isfailure: true,
              errormessage: failure.message,
            ),
          );
        },
        (ProductEntity) {
          log("ProductEntity");
          emit(
            state.copyWith(
              isloading: false,
              DataList: ProductEntity,
              issuccess: true,
              isfailure: true,
            ),
          );
        },
      );
    } catch (e) {
      emit(
        state.copyWith(
          isloading: false,
          DataList: [],
          issuccess: false,
          isfailure: true,
          errormessage: e.toString(),
        ),
      );
    }
  }
}
