part of 'update_profile_bloc.dart';

sealed class UpdateProfileEvent extends Equatable {
  const UpdateProfileEvent();

  @override
  List<Object> get props => [];
}

final class UpdateProfileTapped extends UpdateProfileEvent {
  final UpdateKaryawanRequestModel requestUser;

  const UpdateProfileTapped({required this.requestUser});

  @override
  List<Object> get props => [requestUser];
}
