import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/data/models/response/mitra_model.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/domain/usecases/get_jadwal_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'get_jadwal_event.dart';
part 'get_jadwal_state.dart';

class GetJadwalBloc extends Bloc<GetJadwalEvent, GetJadwalState> {
  GetJadwalBloc() : super(GetJadwalInitial()) {
    on<GetJadwalEvent>((event, emit) async {
      if (event is GetJadwalFetchData) {
        emit(GetJadwalLoading());
        var result = await serviceLocator<GetJadwalUsecase>().getJadwal();
        result.fold(
          (failure) {
            emit(GetJadwalError(message: failure.message));
          },
          (data) {
            emit(
              GetJadwalLoaded(
                mitraModel: data,
              ),
            );
          },
        );
      }
    });
  }
}
