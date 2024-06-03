part of 'update_status_pesanan_bloc.dart';

sealed class UpdateStatusPesananEvent extends Equatable {
  const UpdateStatusPesananEvent();

  @override
  List<Object> get props => [];
}

final class UpdateStatusPesananTapped extends UpdateStatusPesananEvent {
  final StatusPesananRequestModel requestUser;
  final int id;

  const UpdateStatusPesananTapped(
      {required this.requestUser, required this.id});

  @override
  List<Object> get props => [requestUser, id];
}
