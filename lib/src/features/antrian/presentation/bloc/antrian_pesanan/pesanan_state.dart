part of 'pesanan_bloc.dart';

@freezed
class PesananState with _$PesananState {
  const factory PesananState.initial() = PesananInitialState;
  const factory PesananState.loading() = PesananLoadingState;
  const factory PesananState.error(String message) = PesananErrorState;
  const factory PesananState.loadedState({
    required List<PesananResponseModel> pesananList,
  }) = PesananLoadedState;
}
