part of 'ulasan_bloc.dart';

@freezed
class UlasanEvent with _$UlasanEvent {
  const factory UlasanEvent.onGetUlasan() = UlasanFetchDataEvent;
}
