import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/models/request/status_pesanan_request.dart';
import 'package:antria_mitra_mobile/src/features/antrian/domain/usecases/update_status_pesanan_usecase.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'update_status_pesanan_event.dart';
part 'update_status_pesanan_state.dart';

class UpdateStatusPesananBloc
    extends Bloc<UpdateStatusPesananEvent, UpdateStatusPesananState> {
  UpdateStatusPesananBloc() : super(UpdateStatusPesananInitial()) {
    on<UpdateStatusPesananEvent>((event, emit) async {
      if (event is UpdateStatusPesananTapped) {
        final user = event.requestUser;
        final id = event.id;
        emit(UpdateStatusPesananLoading());
        var result = await serviceLocator<UpdateStatusPesananUsecase>()
            .updateStatusPesanan(statusPesananRequestModel: user, id: id);
        result.fold(
          (failure) {
            emit(UpdateStatusPesananError(message: failure.message));
          },
          (data) {
            emit(
              UpdateStatusPesananSuccess(requestUser: user),
            );
          },
        );
      }
    });
  }
}
