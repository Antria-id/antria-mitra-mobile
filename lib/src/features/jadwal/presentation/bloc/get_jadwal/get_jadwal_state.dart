part of 'get_jadwal_bloc.dart';

@freezed
class GetJadwalState with _$GetJadwalState {
  const factory GetJadwalState.initial() = GetJadwalStateInitialState;
  const factory GetJadwalState.loading() = GetJadwalStateLoadingState;
  const factory GetJadwalState.error(String message) = GetJadwalStateErrorState;
  const factory GetJadwalState.loadedState({
    required MitraModel mitraModel,
  }) = GetJadwalStateLoadedState;
}
