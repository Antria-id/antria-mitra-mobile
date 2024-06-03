import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/data/models/detail_transaksi_model.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/domain/usecases/get_detail_transaksi_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'detail_transaksi_event.dart';
part 'detail_transaksi_state.dart';

class DetailTransaksiBloc
    extends Bloc<DetailTransaksiEvent, DetailTransaksiState> {
  DetailTransaksiBloc() : super(DetailTransaksiInitial()) {
    on<DetailTransaksiEvent>((event, emit) async {
      if (event is DetailTransaksiFetchData) {
        var result = await serviceLocator<GetDetailTransaksiUsecase>()
            .getDetailTransaksi(invoice: event.invoice);
        result.fold(
          (failure) {
            emit(DetailTransaksiError(message: failure.message));
          },
          (data) {
            emit(DetailTransaksiLoaded(response: data));
          },
        );
      }
    });
  }
}
