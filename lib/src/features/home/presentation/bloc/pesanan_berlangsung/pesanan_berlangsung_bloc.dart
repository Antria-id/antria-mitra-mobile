import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/home/data/models/pesanan_berlangsung/pesanan_berlangsung_model.dart';
import 'package:antria_mitra_mobile/src/features/home/domain/usecases/get_pesanan_berlangsung_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'pesanan_berlangsung_event.dart';
part 'pesanan_berlangsung_state.dart';

class PesananBerlangsungBloc
    extends Bloc<PesananBerlangsungEvent, PesananBerlangsungState> {
  PesananBerlangsungBloc() : super(PesananBerlangsungInitial()) {
    on<PesananBerlangsungEvent>((event, emit) async {
      if (event is PesananBerlangsungFetchData) {
        emit(PesananBerlangsungLoading());
        var result = await serviceLocator<GetPesananBerlangsungUsecase>()
            .getPesananBerlangsung();
        result.fold(
          (failure) {
            emit(PesananBerlangsungError(message: failure.message));
          },
          (data) {
            emit(
              PesananBerlangsungLoaded(
                pesananList: data,
              ),
            );
          },
        );
      }
    });
  }
}
