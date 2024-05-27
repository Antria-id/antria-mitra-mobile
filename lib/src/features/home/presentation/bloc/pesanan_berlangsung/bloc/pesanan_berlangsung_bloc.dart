import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/home/data/models/pesanan_berlangsung/pesanan_berlangsung_model.dart';
import 'package:antria_mitra_mobile/src/features/home/domain/usecases/get_pesanan_berlangsung_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pesanan_berlangsung_event.dart';
part 'pesanan_berlangsung_state.dart';
part 'pesanan_berlangsung_bloc.freezed.dart';

class PesananBerlangsungBloc
    extends Bloc<PesananBerlangsungEvent, PesananBerlangsungState> {
  PesananBerlangsungBloc() : super(const PesananBerlangsungInitialState()) {
    on<PesananBerlangsungEvent>((event, emit) async {
      var result = await serviceLocator<GetPesananBerlangsungUsecase>()
          .getPesananBerlangsung();
      result.fold(
        (failure) {
          emit(PesananBerlangsungState.error(failure.message));
        },
        (data) {
          emit(
            PesananBerlangsungState.loadedState(
              pesananList: data,
            ),
          );
        },
      );
    });
  }
}
