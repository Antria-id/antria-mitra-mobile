part of 'update_profile_bloc.dart';

@freezed
class UpdateProfileEvent with _$UpdateProfileEvent {
  const factory UpdateProfileEvent.onUpdateTapped(
          {required UpdateKaryawanRequestModel requestUser}) =
      UpdateProfileUserEvent;
}