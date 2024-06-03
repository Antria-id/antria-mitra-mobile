import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/response/ulasan_response.dart';
import 'package:antria_mitra_mobile/src/features/profile/domain/usecases/get_ulasan_mitra_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'ulasan_event.dart';
part 'ulasan_state.dart';

class UlasanBloc extends Bloc<UlasanEvent, UlasanState> {
  UlasanBloc() : super(UlasanInitial()) {
    on<UlasanEvent>((event, emit) async {
      if (event is UlasanFetchData) {
        emit(UlasanLoading());
        var result = await serviceLocator<GetUlasanMitraUsecase>().getUlasan();
        result.fold(
          (failure) {
            emit(UlasanError(message: failure.message));
          },
          (data) {
            emit(
              UlasanLoaded(
                ulasan: data,
              ),
            );
          },
        );
      }
    });
  }
}
