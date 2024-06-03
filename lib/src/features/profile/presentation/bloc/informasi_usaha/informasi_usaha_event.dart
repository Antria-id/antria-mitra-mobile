part of 'informasi_usaha_bloc.dart';

@freezed
class InformasiUsahaEvent with _$InformasiUsahaEvent {
  const factory InformasiUsahaEvent.onGetInformasi() =
      GetInformasiFetchDataEvent;
}
