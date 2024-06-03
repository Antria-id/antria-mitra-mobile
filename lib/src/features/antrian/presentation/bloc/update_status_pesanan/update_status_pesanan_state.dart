part of 'update_status_pesanan_bloc.dart';

sealed class UpdateStatusPesananState extends Equatable {
  const UpdateStatusPesananState();

  @override
  List<Object> get props => [];
}

final class UpdateStatusPesananInitial extends UpdateStatusPesananState {}

final class UpdateStatusPesananLoading extends UpdateStatusPesananState {}

final class UpdateStatusPesananSuccess extends UpdateStatusPesananState {
  final StatusPesananRequestModel requestUser;

  const UpdateStatusPesananSuccess({required this.requestUser});
}

final class UpdateStatusPesananError extends UpdateStatusPesananState {
  final String? message;

  const UpdateStatusPesananError({required this.message});
}
