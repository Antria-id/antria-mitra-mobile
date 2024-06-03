import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/request/update_karyawan_request_model.dart';
import 'package:antria_mitra_mobile/src/features/profile/domain/usecases/update_karyawan_profile_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'update_profile_event.dart';
part 'update_profile_state.dart';

class UpdateProfileBloc extends Bloc<UpdateProfileEvent, UpdateProfileState> {
  UpdateProfileBloc() : super(UpdateProfileInitial()) {
    on<UpdateProfileEvent>((event, emit) async {
      if (event is UpdateProfileTapped) {
        final user = event.requestUser;
        emit(UpdateProfileLoading());
        var result = await serviceLocator<UpdateKaryawanProfileUsecase>()
            .updateProfileKaryawan(user);
        result.fold(
          (failure) {
            emit(UpdateProfileFailed(message: failure.message));
          },
          (data) {
            emit(
              UpdateProfileSuccess(requestUser: user),
            );
          },
        );
      }
    });
  }
}
