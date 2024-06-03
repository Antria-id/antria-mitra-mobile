part of 'riwayat_transaksi_bloc.dart';

sealed class RiwayatTransaksiState extends Equatable {
  const RiwayatTransaksiState();

  @override
  List<Object> get props => [];
}

final class RiwayatTransaksiInitial extends RiwayatTransaksiState {}

final class RiwayatTransaksiLoading extends RiwayatTransaksiState {}

final class RiwayatTransaksiLoaded extends RiwayatTransaksiState {
  final List<RiwayatTransaksiResponse> transaksiList;

  const RiwayatTransaksiLoaded({required this.transaksiList});
}

final class RiwayatTransaksiError extends RiwayatTransaksiState {
  final String? message;

  const RiwayatTransaksiError({required this.message});
}
