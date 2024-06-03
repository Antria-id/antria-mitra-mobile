import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/request/update_karyawan_request_model.dart';
import 'package:antria_mitra_mobile/src/features/profile/domain/usecases/update_karyawan_profile_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_profile_event.dart';
part 'update_profile_state.dart';
part 'update_profile_bloc.freezed.dart';

class UpdateProfileBloc extends Bloc<UpdateProfileEvent, UpdateProfileState> {
  UpdateProfileBloc() : super(const UpdateProfileInitialState()) {
    on<UpdateProfileEvent>((event, emit) async {
      final user = event.requestUser;
      emit(const UpdateProfileState.loading());
      var result = await serviceLocator<UpdateKaryawanProfileUsecase>()
          .updateProfileKaryawan(user);
      result.fold(
        (failure) {
          emit(UpdateProfileState.error(failure.message));
        },
        (data) {
          emit(
            UpdateProfileState.loaded(requestUser: user),
          );
        },
      );
    });
  }
}
