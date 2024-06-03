part of 'informasi_usaha_bloc.dart';

@freezed
class InformasiUsahaState with _$InformasiUsahaState {
  const factory InformasiUsahaState.initial() = InformasiUsahatateInitialState;
  const factory InformasiUsahaState.loading() = InformasiUsahaStateLoadingState;
  const factory InformasiUsahaState.error(String message) =
      InformasiUsahaStateErrorState;
  const factory InformasiUsahaState.loadedState({
    required UsahaResponseModel responseModel,
  }) = InformasiUsahaStateLoadedState;
}
