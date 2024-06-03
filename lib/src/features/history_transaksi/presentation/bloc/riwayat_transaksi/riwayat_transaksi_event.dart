part of 'riwayat_transaksi_bloc.dart';

sealed class RiwayatTransaksiEvent extends Equatable {
  const RiwayatTransaksiEvent();

  @override
  List<Object> get props => [];
}

final class RiwayatTransaksiFetchData extends RiwayatTransaksiEvent {}
