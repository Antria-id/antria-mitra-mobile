import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/home/data/models/pesanan_model.dart';
import 'package:antria_mitra_mobile/src/features/home/domain/usecases/get_pesanan_mitra_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'pesanan_mitra_event.dart';
part 'pesanan_mitra_state.dart';

class PesananMitraBloc extends Bloc<PesananMitraEvent, PesananMitraState> {
  PesananMitraBloc() : super(PesananMitraInitial()) {
    on<PesananMitraEvent>((event, emit) async {
      if (event is PesananMitraFetchData) {
        emit(PesananMitraLoading());
        var result =
            await serviceLocator<GetPesananMitraUsecase>().getPesananMitra();
        result.fold(
          (failure) {
            emit(PesananMitraError(message: failure.message));
          },
          (data) {
            emit(
              PesananMitraLoaded(
                pesananList: data,
              ),
            );
          },
        );
      }
    });
  }
}
