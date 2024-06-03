import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/kasir/data/models/product_model.dart';
import 'package:antria_mitra_mobile/src/features/kasir/domain/usecases/get_product_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(const ProductInitialState()) {
    on<ProductEvent>((event, emit) async {
      var result = await serviceLocator<GetProductUsecase>().getProduct();
      result.fold(
        (failure) {
          emit(ProductState.error(failure.message));
        },
        (data) {
          emit(
            ProductState.loadedState(
              product: data,
            ),
          );
        },
      );
    });
  }
}
