import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/data/models/response/mitra_model.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/domain/usecases/get_jadwal_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_jadwal_event.dart';
part 'get_jadwal_state.dart';
part 'get_jadwal_bloc.freezed.dart';

class GetJadwalBloc extends Bloc<GetJadwalEvent, GetJadwalState> {
  GetJadwalBloc() : super(const GetJadwalStateInitialState()) {
    on<GetJadwalEvent>((event, emit) async {
      emit(const GetJadwalState.loading());
      var result = await serviceLocator<GetJadwalUsecase>().getJadwal();
      result.fold(
        (failure) {
          emit(GetJadwalState.error(failure.message));
        },
        (data) {
          emit(
            GetJadwalState.loadedState(
              mitraModel: data,
            ),
          );
        },
      );
    });
  }
}
