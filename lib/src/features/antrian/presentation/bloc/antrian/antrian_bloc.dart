import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/models/response/pesanan_invoice_response.dart';
import 'package:antria_mitra_mobile/src/features/antrian/domain/usecases/get_pesanan_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'antrian_event.dart';
part 'antrian_state.dart';

class AntrianBloc extends Bloc<AntrianEvent, AntrianState> {
  AntrianBloc() : super(AntrianInitial()) {
    on<AntrianEvent>((event, emit) async {
      if (event is AntrianFetchData) {
        emit(AntrianLoading());
        var result = await serviceLocator<GetPesananUsecase>().getPesanan();
        result.fold(
          (failure) {
            emit(AntrianError(message: failure.message));
          },
          (data) {
            emit(
              AntrianLoaded(
                pesananList: data,
              ),
            );
          },
        );
      }
    });
  }
}
