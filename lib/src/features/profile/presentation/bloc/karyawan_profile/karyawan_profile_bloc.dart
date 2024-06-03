import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/response/karyawan_model.dart';
import 'package:antria_mitra_mobile/src/features/profile/domain/usecases/get_karyawan_profile_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'karyawan_profile_event.dart';
part 'karyawan_profile_state.dart';

class KaryawanProfileBloc
    extends Bloc<KaryawanProfileEvent, KaryawanProfileState> {
  KaryawanProfileBloc() : super(KaryawanProfileInitial()) {
    on<KaryawanProfileEvent>((event, emit) async {
      if (event is KaryawanProfileFetchData) {
        emit(KaryawanProfileLoading());
        var result =
            await serviceLocator<GetKaryawanProfileUsecase>().getKaryawan();
        result.fold(
          (failure) {
            emit(KaryawanProfileError(message: failure.message));
          },
          (data) {
            emit(
              KaryawanProfileLoaded(
                karyawanModel: data,
              ),
            );
          },
        );
      }
    });
  }
}
