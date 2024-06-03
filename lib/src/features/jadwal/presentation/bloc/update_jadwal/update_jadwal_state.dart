part of 'update_jadwal_bloc.dart';

sealed class UpdateJadwalState extends Equatable {
  const UpdateJadwalState();

  @override
  List<Object> get props => [];
}

final class UpdateJadwalInitial extends UpdateJadwalState {}

final class UpdateJadwalLoading extends UpdateJadwalState {}

final class UpdateJadwalSuccess extends UpdateJadwalState {
  final MitraRequestModel request;

  const UpdateJadwalSuccess({required this.request});
}

final class UpdateJadwalFailed extends UpdateJadwalState {
  final String? message;

  const UpdateJadwalFailed({required this.message});
}
