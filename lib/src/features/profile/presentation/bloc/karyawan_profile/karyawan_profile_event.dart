part of 'karyawan_profile_bloc.dart';

@freezed
class KaryawanProfileEvent with _$KaryawanProfileEvent {
  const factory KaryawanProfileEvent.onGetProfile() = GetKaryawanFetchDataEvent;
}
