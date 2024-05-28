import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/models/response/pesanan_response_model.dart';
import 'package:antria_mitra_mobile/src/features/antrian/domain/usecases/get_pesanan_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pesanan_event.dart';
part 'pesanan_state.dart';
part 'pesanan_bloc.freezed.dart';

class PesananBloc extends Bloc<PesananEvent, PesananState> {
  PesananBloc() : super(const PesananInitialState()) {
    on<PesananEvent>((event, emit) async {
      var result = await serviceLocator<GetPesananUsecase>().getPesanan();
      result.fold(
        (failure) {
          emit(PesananState.error(failure.message));
        },
        (data) {
          emit(
            PesananState.loadedState(
              pesananList: data,
            ),
          );
        },
      );
    });
  }
}
