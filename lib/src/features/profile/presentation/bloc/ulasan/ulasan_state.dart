part of 'ulasan_bloc.dart';

@freezed
class UlasanState with _$UlasanState {
  const factory UlasanState.initial() = UlasanInitialState;
  const factory UlasanState.loading() = UlasanLoadingState;
  const factory UlasanState.error(String message) = UlasanErrorState;
  const factory UlasanState.loadedState({
    required List<UlasanResponse> ulasan,
  }) = UlasanLoadedState;
}
