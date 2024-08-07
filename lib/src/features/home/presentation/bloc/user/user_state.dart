part of 'user_bloc.dart';

sealed class UserState extends Equatable {
  const UserState();

  @override
  List<Object> get props => [];
}

final class UserInitial extends UserState {}

final class UserLoading extends UserState {}

final class UserLoaded extends UserState {
  final KaryawanModel user;

  const UserLoaded({required this.user});
}

final class UserLocalLoaded extends UserState {
  final UserModel user;

  const UserLocalLoaded({required this.user});
}

final class UserError extends UserState {
  final String? message;

  const UserError({required this.message});
}
