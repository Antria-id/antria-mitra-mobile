part of 'update_status_usaha_bloc.dart';

sealed class UpdateStatusUsahaEvent extends Equatable {
  const UpdateStatusUsahaEvent();

  @override
  List<Object> get props => [];
}

final class UpdateStatusTapped extends UpdateStatusUsahaEvent {
  final StatusUsahaRequest requestUser;

  const UpdateStatusTapped({required this.requestUser});

  @override
  List<Object> get props => [requestUser];
}
