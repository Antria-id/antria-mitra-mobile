import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/data/models/riwayat_transaksi_response_model.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/domain/usecases/get_riwayat_usecase.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'riwayat_transaksi_event.dart';
part 'riwayat_transaksi_state.dart';

class RiwayatTransaksiBloc
    extends Bloc<RiwayatTransaksiEvent, RiwayatTransaksiState> {
  RiwayatTransaksiBloc() : super(RiwayatTransaksiInitial()) {
    on<RiwayatTransaksiEvent>((event, emit) async {
      if (event is RiwayatTransaksiFetchData) {
        var result = await serviceLocator<GetRiwayatTransaksiUsecase>()
            .getRiwayatTransaksi();
        result.fold(
          (failure) {
            emit(RiwayatTransaksiError(message: failure.message));
          },
          (data) {
            emit(
              RiwayatTransaksiLoaded(
                transaksiList: data,
              ),
            );
          },
        );
      }
    });
  }
}
