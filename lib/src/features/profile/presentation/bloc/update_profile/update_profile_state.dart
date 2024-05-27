part of 'update_profile_bloc.dart';

@freezed
class UpdateProfileState with _$UpdateProfileState {
  const factory UpdateProfileState.initial() = UpdateProfileInitialState;
  const factory UpdateProfileState.loading() = UpdateProfileLoadingState;
  const factory UpdateProfileState.error(String message) =
      UpdateProfileErrorState;
  const factory UpdateProfileState.loaded({
    required UpdateKaryawanRequestModel requestUser,
  }) = UpdateProfileLoadedState;
}
