part of 'produk_bloc.dart';

sealed class ProdukState extends Equatable {
  const ProdukState();

  @override
  List<Object> get props => [];
}

final class ProdukInitial extends ProdukState {}

final class ProdukLoading extends ProdukState {}

final class ProdukLoaded extends ProdukState {
  final List<ProductModel> product;

  const ProdukLoaded({required this.product});
}

final class ProdukError extends ProdukState {
  final String? message;

  const ProdukError({required this.message});
}
