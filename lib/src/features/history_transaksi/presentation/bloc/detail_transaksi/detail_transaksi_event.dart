part of 'detail_transaksi_bloc.dart';

sealed class DetailTransaksiEvent extends Equatable {
  const DetailTransaksiEvent();

  @override
  List<Object> get props => [];
}

final class DetailTransaksiFetchData extends DetailTransaksiEvent {
  final String invoice;

  const DetailTransaksiFetchData({required this.invoice});

  @override
  List<Object> get props => [invoice];
}
