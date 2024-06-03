part of 'update_usaha_bloc.dart';

@freezed
class UpdateUsahaState with _$UpdateUsahaState {
  const factory UpdateUsahaState.initial() = UpdateUsahaInitialState;
  const factory UpdateUsahaState.loading() = UpdateUsahaLoadingState;
  const factory UpdateUsahaState.error(String message) =
      UpdateProfileErrorState;
  const factory UpdateUsahaState.loaded({
    required UpdateUsahaRequestModel requestUser,
  }) = UpdateUsahaLoadedState;
}
