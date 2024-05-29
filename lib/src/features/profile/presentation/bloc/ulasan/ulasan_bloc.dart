import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/response/ulasan_response.dart';
import 'package:antria_mitra_mobile/src/features/profile/domain/usecases/get_ulasan_mitra_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ulasan_event.dart';
part 'ulasan_state.dart';
part 'ulasan_bloc.freezed.dart';

class UlasanBloc extends Bloc<UlasanEvent, UlasanState> {
  UlasanBloc() : super(const UlasanInitialState()) {
    on<UlasanEvent>((event, emit) async {
      var result = await serviceLocator<GetUlasanMitraUsecase>().getUlasan();
      result.fold(
        (failure) {
          emit(UlasanState.error(failure.message));
        },
        (data) {
          emit(
            UlasanState.loadedState(
              ulasan: data,
            ),
          );
        },
      );
    });
  }
}
