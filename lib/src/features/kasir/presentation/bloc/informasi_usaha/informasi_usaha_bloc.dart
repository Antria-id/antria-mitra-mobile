import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/kasir/data/models/usaha_response_model.dart';
import 'package:antria_mitra_mobile/src/features/kasir/domain/usecases/get_informasi_usaha_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'informasi_usaha_event.dart';
part 'informasi_usaha_state.dart';

class InformasiUsahaBloc
    extends Bloc<InformasiUsahaEvent, InformasiUsahaState> {
  InformasiUsahaBloc() : super(InformasiUsahaInitial()) {
    on<InformasiUsahaEvent>((event, emit) async {
      if (event is InformasiUsahaFetchData) {
        emit(InformasiUsahaLoading());
        var result = await serviceLocator<GetInformasiUsahaUsecase>()
            .getInformasiUsaha();
        result.fold(
          (failure) {
            emit(InformasiUsahaError(message: failure.message));
          },
          (data) {
            emit(
              InformasiUsahaLoaded(responseModel: data),
            );
          },
        );
      }
    });
  }
}
