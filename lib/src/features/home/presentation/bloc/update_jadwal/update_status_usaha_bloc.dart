import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/home/data/models/stataus_usaha_request_model.dart';
import 'package:antria_mitra_mobile/src/features/home/domain/usecases/update_jadwal_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'update_status_usaha_event.dart';
part 'update_status_usaha_state.dart';

class UpdateStatusUsahaBloc
    extends Bloc<UpdateStatusUsahaEvent, UpdateStatusUsahaState> {
  UpdateStatusUsahaBloc() : super(UpdateStatusInitial()) {
    on<UpdateStatusUsahaEvent>((event, emit) async {
      if (event is UpdateStatusTapped) {
        final status = event.requestUser;
        emit(UpdateStatusLoading());
        var result = await serviceLocator<UpdateStatusUsahaUsecase>()
            .UpdateStatus(status);
        result.fold(
          (failure) {
            emit(UpdateStatusFailed(message: failure.message));
          },
          (data) {
            emit(
              UpdateStatusSuccess(request: status),
            );
          },
        );
      }
    });
  }
}
