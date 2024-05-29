part of 'detail_transaksi_bloc.dart';

@freezed
class DetailTransaksiEvent with _$DetailTransaksiEvent {
  const factory DetailTransaksiEvent.onGetDetail({
    required String invoice,
  }) = DetailTransaksiFetchDataEvent;
}
