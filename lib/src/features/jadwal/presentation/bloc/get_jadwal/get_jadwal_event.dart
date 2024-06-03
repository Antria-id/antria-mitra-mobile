part of 'get_jadwal_bloc.dart';

sealed class GetJadwalEvent extends Equatable {
  const GetJadwalEvent();

  @override
  List<Object> get props => [];
}

final class GetJadwalFetchData extends GetJadwalEvent {}
