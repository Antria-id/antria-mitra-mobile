part of 'pesanan_berlangsung_bloc.dart';

@freezed
class PesananBerlangsungState with _$PesananBerlangsungState {
  const factory PesananBerlangsungState.initial() =
      PesananBerlangsungInitialState;
  const factory PesananBerlangsungState.loading() =
      PesananBerlangsungLoadingState;
  const factory PesananBerlangsungState.error(String message) =
      PesananBerlangsungErrorState;
  const factory PesananBerlangsungState.loadedState({
    required List<PesananBerlangsungModel> pesananList,
  }) = PesananBerlangsungLoadedState;
}
