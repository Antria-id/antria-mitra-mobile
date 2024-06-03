part of 'update_status_pesanan_bloc.dart';

@freezed
class UpdateStatusPesananEvent with _$UpdateStatusPesananEvent {
  const factory UpdateStatusPesananEvent.onUpdateTapped(
      {required StatusPesananRequestModel requestUser,
      required int id}) = UpdatePesananUserEvent;
}
