part of 'update_jadwal_bloc.dart';

sealed class UpdateJadwalEvent extends Equatable {
  const UpdateJadwalEvent();

  @override
  List<Object> get props => [];
}

final class UpdateJadwalTapped extends UpdateJadwalEvent {
  final MitraRequestModel requestUser;

  const UpdateJadwalTapped({required this.requestUser});

  @override
  List<Object> get props => [requestUser];
}
