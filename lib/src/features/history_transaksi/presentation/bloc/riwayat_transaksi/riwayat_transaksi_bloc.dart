import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/data/models/riwayat_transaksi_response_model.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/domain/usecases/get_riwayat_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'riwayat_transaksi_event.dart';
part 'riwayat_transaksi_state.dart';
part 'riwayat_transaksi_bloc.freezed.dart';

class RiwayatTransaksiBloc
    extends Bloc<RiwayatTransaksiEvent, RiwayatTransaksiState> {
  RiwayatTransaksiBloc() : super(const RiwayatTransaksiInitialState()) {
    on<RiwayatTransaksiEvent>((event, emit) async {
      var result = await serviceLocator<GetRiwayatTransaksiUsecase>()
          .getRiwayatTransaksi();
      result.fold(
        (failure) {
          emit(RiwayatTransaksiState.error(failure.message));
        },
        (data) {
          emit(
            RiwayatTransaksiState.loadedState(
              transaksiList: data,
            ),
          );
        },
      );
    });
  }
}
