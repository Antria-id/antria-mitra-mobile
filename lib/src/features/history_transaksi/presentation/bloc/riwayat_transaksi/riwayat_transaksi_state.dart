part of 'riwayat_transaksi_bloc.dart';

@freezed
class RiwayatTransaksiState with _$RiwayatTransaksiState {
  const factory RiwayatTransaksiState.initial() = RiwayatTransaksiInitialState;
  const factory RiwayatTransaksiState.loading() = RiwayatTransaksiLoadingState;
  const factory RiwayatTransaksiState.error(String message) =
      RiwayatTransaksiErrorState;
  const factory RiwayatTransaksiState.loadedState({
    required List<RiwayatTransaksiResponse> transaksiList,
  }) = RiwayatTransaksiLoadedState;
}
