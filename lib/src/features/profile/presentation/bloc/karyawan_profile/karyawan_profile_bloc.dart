import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/response/karyawan_model.dart';
import 'package:antria_mitra_mobile/src/features/profile/domain/usecases/get_karyawan_profile_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'karyawan_profile_event.dart';
part 'karyawan_profile_state.dart';
part 'karyawan_profile_bloc.freezed.dart';

class KaryawanProfileBloc
    extends Bloc<KaryawanProfileEvent, KaryawanProfileState> {
  KaryawanProfileBloc() : super(const KaryawanProfileStateInitialState()) {
    on<KaryawanProfileEvent>((event, emit) async {
      emit(const KaryawanProfileState.loading());
      var result =
          await serviceLocator<GetKaryawanProfileUsecase>().getKaryawan();
      result.fold(
        (failure) {
          emit(KaryawanProfileState.error(failure.message));
        },
        (data) {
          emit(
            KaryawanProfileState.loadedState(
              karyawanModel: data,
            ),
          );
        },
      );
    });
  }
}
