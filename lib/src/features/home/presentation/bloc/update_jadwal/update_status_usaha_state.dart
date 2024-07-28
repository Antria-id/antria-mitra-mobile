part of 'update_status_usaha_bloc.dart';

sealed class UpdateStatusUsahaState extends Equatable {
  const UpdateStatusUsahaState();

  @override
  List<Object> get props => [];
}

final class UpdateStatusInitial extends UpdateStatusUsahaState {}

final class UpdateStatusLoading extends UpdateStatusUsahaState {}

final class UpdateStatusSuccess extends UpdateStatusUsahaState {
  final StatusUsahaRequest request;

  const UpdateStatusSuccess({required this.request});
}

final class UpdateStatusFailed extends UpdateStatusUsahaState {
  final String? message;

  const UpdateStatusFailed({required this.message});
}
