part of 'update_status_pesanan_bloc.dart';

@freezed
class UpdateStatusPesananState with _$UpdateStatusPesananState {
  const factory UpdateStatusPesananState.initial() =
      UpdateStatusPesananInitialState;
  const factory UpdateStatusPesananState.loading() =
      UpdateStatusPesananLoadingState;
  const factory UpdateStatusPesananState.error(String message) =
      UpdateStatusPesananErrorState;
  const factory UpdateStatusPesananState.loaded({
    required StatusPesananRequestModel requestUser,
  }) = UpdateStatusPesananLoadedState;
}
