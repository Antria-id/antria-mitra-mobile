part of 'riwayat_transaksi_bloc.dart';

@freezed
class RiwayatTransaksiEvent with _$RiwayatTransaksiEvent {
  const factory RiwayatTransaksiEvent.onGetRiwayat() = GetRiwayatFetchDataEvent;
}
