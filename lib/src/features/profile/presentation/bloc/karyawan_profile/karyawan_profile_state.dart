part of 'karyawan_profile_bloc.dart';

@freezed
class KaryawanProfileState with _$KaryawanProfileState {
  const factory KaryawanProfileState.initial() =
      KaryawanProfileStateInitialState;
  const factory KaryawanProfileState.loading() =
      KaryawanProfileStateLoadingState;
  const factory KaryawanProfileState.error(String message) =
      KaryawanProfileStateErrorState;
  const factory KaryawanProfileState.loadedState({
    required KaryawanModel karyawanModel,
  }) = KaryawanProfileStateLoadedState;
}
