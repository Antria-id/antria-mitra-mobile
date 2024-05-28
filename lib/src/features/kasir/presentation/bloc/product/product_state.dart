part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.initial() = ProductInitialState;
  const factory ProductState.loading() = ProductLoadingState;
  const factory ProductState.error(String message) = ProductErrorState;
  const factory ProductState.loadedState({
    required List<ProductModel> product,
  }) = ProductLoadedState;
}
