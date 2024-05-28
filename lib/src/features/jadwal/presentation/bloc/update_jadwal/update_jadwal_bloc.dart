import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/data/models/request/mitra_request_model.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/domain/usecases/update_jadwal_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_jadwal_event.dart';
part 'update_jadwal_state.dart';
part 'update_jadwal_bloc.freezed.dart';

class UpdateJadwalBloc extends Bloc<UpdateJadwalEvent, UpdateJadwalState> {
  UpdateJadwalBloc() : super(const UpdateJadwalInitialState()) {
    on<UpdateJadwalEvent>((event, emit) async {
      final user = event.requestUser;
      emit(const UpdateJadwalState.loading());
      var result =
          await serviceLocator<UpdateJadwalUsecase>().updateJadwal(user);
      result.fold(
        (failure) {
          emit(UpdateJadwalState.error(failure.message));
        },
        (data) {
          emit(
            UpdateJadwalState.loaded(request: user),
          );
        },
      );
    });
  }
}
