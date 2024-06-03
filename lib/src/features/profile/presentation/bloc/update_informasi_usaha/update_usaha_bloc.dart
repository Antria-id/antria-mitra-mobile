import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/request/update_usaha_request.dart';
import 'package:antria_mitra_mobile/src/features/profile/domain/usecases/update_informasi_usaha_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_usaha_event.dart';
part 'update_usaha_state.dart';
part 'update_usaha_bloc.freezed.dart';

class UpdateUsahaBloc extends Bloc<UpdateUsahaEvent, UpdateUsahaState> {
  UpdateUsahaBloc() : super(const UpdateUsahaInitialState()) {
    on<UpdateUsahaEvent>((event, emit) async {
      final user = event.requestUser;
      emit(const UpdateUsahaState.loading());
      var result = await serviceLocator<UpdateInformasiUsahaUsecase>()
          .updateInformasiUsaha(user);
      result.fold(
        (failure) {
          emit(UpdateUsahaState.error(failure.message));
        },
        (data) {
          emit(
            UpdateUsahaState.loaded(requestUser: user),
          );
        },
      );
    });
  }
}
