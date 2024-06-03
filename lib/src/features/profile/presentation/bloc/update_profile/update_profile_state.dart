part of 'update_profile_bloc.dart';

sealed class UpdateProfileState extends Equatable {
  const UpdateProfileState();

  @override
  List<Object> get props => [];
}

final class UpdateProfileInitial extends UpdateProfileState {}

final class UpdateProfileLoading extends UpdateProfileState {}

final class UpdateProfileSuccess extends UpdateProfileState {
  final UpdateKaryawanRequestModel requestUser;

  const UpdateProfileSuccess({required this.requestUser});
}

final class UpdateProfileFailed extends UpdateProfileState {
  final String? message;

  const UpdateProfileFailed({required this.message});
}
