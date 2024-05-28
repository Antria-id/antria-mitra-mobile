part of 'update_jadwal_bloc.dart';

@freezed
class UpdateJadwalState with _$UpdateJadwalState {
  const factory UpdateJadwalState.initial() = UpdateJadwalInitialState;
  const factory UpdateJadwalState.loading() = UpdateJadwalLoadingState;
  const factory UpdateJadwalState.error(String message) =
      UpdateJadwalErrorState;
  const factory UpdateJadwalState.loaded({
    required MitraRequestModel request,
  }) = UpdateJadwalLoadedState;
}
