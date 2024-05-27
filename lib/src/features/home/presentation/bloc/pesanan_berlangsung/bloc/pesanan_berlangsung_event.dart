part of 'pesanan_berlangsung_bloc.dart';

@freezed
class PesananBerlangsungEvent with _$PesananBerlangsungEvent {
  const factory PesananBerlangsungEvent.onGetPesananBerlangsung() =
      GetPesananBerlangsungFetchDataEvent;
}
