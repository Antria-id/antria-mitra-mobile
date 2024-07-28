import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/home/data/models/status_usaha_model.dart';
import 'package:antria_mitra_mobile/src/features/home/domain/usecases/get_status_usaha_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'get_status_usaha_event.dart';
part 'get_status_usaha_state.dart';

class GetStatusUsahaBloc
    extends Bloc<GetStatusUsahaEvent, GetStatusUsahaState> {
  GetStatusUsahaBloc() : super(GetStatusInitial()) {
    on<GetStatusUsahaEvent>((event, emit) async {
      if (event is GetStatusFetchData) {
        emit(GetStatusLoading());
        var result = await serviceLocator<GetStatusUsahaUsecase>().getStatus();
        result.fold(
          (failure) {
            emit(GetStatusError(message: failure.message));
          },
          (data) {
            emit(
              GetStatusLoaded(
                statusUsahaModel: data,
              ),
            );
          },
        );
      }
    });
  }
}
