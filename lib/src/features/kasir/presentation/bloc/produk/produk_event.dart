part of 'produk_bloc.dart';

sealed class ProdukEvent extends Equatable {
  const ProdukEvent();

  @override
  List<Object> get props => [];
}

final class ProdukFetchData extends ProdukEvent {}
