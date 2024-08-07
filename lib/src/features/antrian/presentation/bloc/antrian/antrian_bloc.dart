import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/models/response/antrian_list_response_model.dart';
import 'package:antria_mitra_mobile/src/features/antrian/domain/usecases/get_antrian_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'antrian_event.dart';
part 'antrian_state.dart';

class AntrianBloc extends Bloc<AntrianEvent, AntrianState> {
  AntrianBloc() : super(AntrianInitial()) {
    on<AntrianEvent>((event, emit) async {
      if (event is AntrianFetchData) {
        emit(AntrianLoading());
        var result = await serviceLocator<GetAntrianUsecase>().getAntrian();
        result.fold(
          (failure) {
            emit(AntrianError(message: failure.message));
          },
          (data) {
            emit(
              AntrianLoaded(
                pesananList: data,
              ),
            );
          },
        );
      }
    });
  }
}
