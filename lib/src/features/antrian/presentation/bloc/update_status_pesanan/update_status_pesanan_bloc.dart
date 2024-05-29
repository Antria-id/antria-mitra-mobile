import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/models/request/status_pesanan_request.dart';
import 'package:antria_mitra_mobile/src/features/antrian/domain/usecases/update_status_pesanan_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_status_pesanan_event.dart';
part 'update_status_pesanan_state.dart';
part 'update_status_pesanan_bloc.freezed.dart';

class UpdateStatusPesananBloc
    extends Bloc<UpdateStatusPesananEvent, UpdateStatusPesananState> {
  UpdateStatusPesananBloc() : super(const UpdateStatusPesananInitialState()) {
    on<UpdateStatusPesananEvent>((event, emit) async {
      final user = event.requestUser;
      final id = event.id;
      emit(const UpdateStatusPesananState.loading());
      var result = await serviceLocator<UpdateStatusPesananUsecase>()
          .updateStatusPesanan(statusPesananRequestModel: user, id: id);
      result.fold(
        (failure) {
          emit(UpdateStatusPesananState.error(failure.message));
        },
        (data) {
          emit(
            UpdateStatusPesananState.loaded(requestUser: user),
          );
        },
      );
    });
  }
}
