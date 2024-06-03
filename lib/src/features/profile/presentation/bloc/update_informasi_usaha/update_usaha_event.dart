part of 'update_usaha_bloc.dart';

@freezed
class UpdateUsahaEvent with _$UpdateUsahaEvent {
  const factory UpdateUsahaEvent.onUpdateTapped(
      {required UpdateUsahaRequestModel requestUser}) = UpdateUsahaUserEvent;
}
