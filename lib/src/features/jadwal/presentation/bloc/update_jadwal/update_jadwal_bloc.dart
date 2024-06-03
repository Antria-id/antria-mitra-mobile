import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/data/models/request/mitra_request_model.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/domain/usecases/update_jadwal_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'update_jadwal_event.dart';
part 'update_jadwal_state.dart';

class UpdateJadwalBloc extends Bloc<UpdateJadwalEvent, UpdateJadwalState> {
  UpdateJadwalBloc() : super(UpdateJadwalInitial()) {
    on<UpdateJadwalEvent>((event, emit) async {
      if (event is UpdateJadwalTapped) {
        final user = event.requestUser;
        emit(UpdateJadwalLoading());
        var result =
            await serviceLocator<UpdateJadwalUsecase>().updateJadwal(user);
        result.fold(
          (failure) {
            emit(UpdateJadwalFailed(message: failure.message));
          },
          (data) {
            emit(
              UpdateJadwalSuccess(request: user),
            );
          },
        );
      }
    });
  }
}
