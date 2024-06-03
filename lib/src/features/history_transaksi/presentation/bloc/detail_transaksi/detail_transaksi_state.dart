part of 'detail_transaksi_bloc.dart';

sealed class DetailTransaksiState extends Equatable {
  const DetailTransaksiState();

  @override
  List<Object> get props => [];
}

final class DetailTransaksiInitial extends DetailTransaksiState {}

final class DetailTransaksiLoading extends DetailTransaksiState {}

final class DetailTransaksiLoaded extends DetailTransaksiState {
  final DetailTransaksiModel response;

  const DetailTransaksiLoaded({required this.response});
}

final class DetailTransaksiError extends DetailTransaksiState {
  final String? message;

  const DetailTransaksiError({required this.message});
}
