part of 'pesanan_bloc.dart';

@freezed
class PesananEvent with _$PesananEvent {
  const factory PesananEvent.onGetPesanan() = GetPesananFetchDataEvent;
}
