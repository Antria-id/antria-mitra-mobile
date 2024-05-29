part of 'detail_transaksi_bloc.dart';

@freezed
class DetailTransaksiState with _$DetailTransaksiState {
  const factory DetailTransaksiState.initial() = DetailTransaksiInitialState;
  const factory DetailTransaksiState.loading() = DetailTransaksiLoadingState;
  const factory DetailTransaksiState.error(String message) =
      DetailTransaksiErrorState;
  const factory DetailTransaksiState.loaded({
    required DetailTransaksiModel response,
  }) = DetailTransaksiLoadedState;
}
