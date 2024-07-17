part of 'pesanan_mitra_bloc.dart';

sealed class PesananMitraEvent extends Equatable {
  const PesananMitraEvent();

  @override
  List<Object> get props => [];
}

final class PesananMitraFetchData extends PesananMitraEvent {}
