import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/response/usaha_response_model.dart';
import 'package:antria_mitra_mobile/src/features/profile/domain/usecases/get_informasi_usaha_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'informasi_usaha_event.dart';
part 'informasi_usaha_state.dart';
part 'informasi_usaha_bloc.freezed.dart';

class InformasiUsahaBloc
    extends Bloc<InformasiUsahaEvent, InformasiUsahaState> {
  InformasiUsahaBloc() : super(const InformasiUsahatateInitialState()) {
    on<InformasiUsahaEvent>((event, emit) async {
      var result =
          await serviceLocator<GetInformasiUsahaUsecase>().getInformasiUsaha();
      result.fold(
        (failure) {
          emit(InformasiUsahaState.error(failure.message));
        },
        (data) {
          emit(
            InformasiUsahaState.loadedState(
              responseModel: data,
            ),
          );
        },
      );
    });
  }
}
