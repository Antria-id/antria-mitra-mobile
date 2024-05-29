import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/data/models/detail_transaksi_model.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/domain/usecases/get_detail_transaksi_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_transaksi_event.dart';
part 'detail_transaksi_state.dart';
part 'detail_transaksi_bloc.freezed.dart';

class DetailTransaksiBloc
    extends Bloc<DetailTransaksiEvent, DetailTransaksiState> {
  DetailTransaksiBloc() : super(const DetailTransaksiInitialState()) {
    on<DetailTransaksiEvent>((event, emit) async {
      var result = await serviceLocator<GetDetailTransaksiUsecase>()
          .getDetailTransaksi(invoice: event.invoice);
      result.fold(
        (failure) {
          emit(DetailTransaksiState.error(failure.message));
        },
        (data) {
          emit(DetailTransaksiState.loaded(response: data));
        },
      );
    });
  }
}
