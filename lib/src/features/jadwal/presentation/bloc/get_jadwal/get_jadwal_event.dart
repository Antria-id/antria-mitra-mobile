part of 'get_jadwal_bloc.dart';

@freezed
class GetJadwalEvent with _$GetJadwalEvent {
  const factory GetJadwalEvent.onGetJadwal() = GetJadwalFetchDataEvent;
}
