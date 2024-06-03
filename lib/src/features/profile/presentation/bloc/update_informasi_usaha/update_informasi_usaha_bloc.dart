import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/request/update_usaha_request.dart';
import 'package:antria_mitra_mobile/src/features/profile/domain/usecases/update_informasi_usaha_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'update_informasi_usaha_event.dart';
part 'update_informasi_usaha_state.dart';

class UpdateInformasiUsahaBloc
    extends Bloc<UpdateInformasiUsahaEvent, UpdateInformasiUsahaState> {
  UpdateInformasiUsahaBloc() : super(UpdateInformasiUsahaInitial()) {
    on<UpdateInformasiUsahaEvent>((event, emit) async {
      if (event is UpdateInformasiUsahaTapped) {
        final user = event.requestUser;
        emit(UpdateInformasiUsahaLoading());
        var result = await serviceLocator<UpdateInformasiUsahaUsecase>()
            .updateInformasiUsaha(user);
        result.fold(
          (failure) {
            emit(UpdateInformasiUsahaFailed(message: failure.message));
          },
          (data) {
            emit(
              UpdateInformasiUsahaSuccess(requestUser: user),
            );
          },
        );
      }
    });
  }
}
