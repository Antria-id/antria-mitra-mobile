import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/user/user_model.dart';
import 'package:antria_mitra_mobile/src/features/profile/domain/usecases/logout_user_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'logout_event.dart';
part 'logout_state.dart';
part 'logout_bloc.freezed.dart';

class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  LogoutBloc() : super(const LogoutInitialState()) {
    on<LogoutEvent>((event, emit) async {
      emit(const LogoutLoadingState());
      var result = await serviceLocator<LogoutUserUsecase>()
          .deleteUserFromLocalStorage();
      result.fold(
        (failure) {
          emit(LogoutState.error(failure.message));
        },
        (data) {
          emit(
            const LogoutState.loadedState(
              user: null,
            ),
          );
        },
      );
    });
  }
}
