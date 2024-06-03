part of 'logout_bloc.dart';

sealed class LogoutState extends Equatable {
  const LogoutState();

  @override
  List<Object> get props => [];
}

final class LogoutInitial extends LogoutState {}

final class LogoutLoading extends LogoutState {}

final class LogoutSuccess extends LogoutState {
  final UserModel? user;

  const LogoutSuccess({required this.user});
}

final class LogoutFailed extends LogoutState {
  final String? message;

  const LogoutFailed({required this.message});
}
