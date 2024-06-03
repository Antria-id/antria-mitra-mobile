part of 'get_jadwal_bloc.dart';

sealed class GetJadwalState extends Equatable {
  const GetJadwalState();

  @override
  List<Object> get props => [];
}

final class GetJadwalInitial extends GetJadwalState {}

final class GetJadwalLoading extends GetJadwalState {}

final class GetJadwalLoaded extends GetJadwalState {
  final MitraModel mitraModel;

  const GetJadwalLoaded({required this.mitraModel});
}

final class GetJadwalError extends GetJadwalState {
  final String? message;

  const GetJadwalError({required this.message});
}
