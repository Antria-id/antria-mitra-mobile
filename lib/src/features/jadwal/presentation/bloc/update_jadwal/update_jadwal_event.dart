part of 'update_jadwal_bloc.dart';

@freezed
class UpdateJadwalEvent with _$UpdateJadwalEvent {
  const factory UpdateJadwalEvent.onUpdateTapped({
    required MitraRequestModel requestUser,
  }) = UpdateJadwalMitraEvent;
}
