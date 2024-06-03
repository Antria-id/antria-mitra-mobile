import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/user/user_model.dart';
import 'package:antria_mitra_mobile/src/features/profile/domain/usecases/logout_user_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'logout_event.dart';
part 'logout_state.dart';

class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  LogoutBloc() : super(LogoutInitial()) {
    on<LogoutEvent>((event, emit) async {
      if (event is LogoutTapped) {
        emit(LogoutLoading());
        var result = await serviceLocator<LogoutUserUsecase>()
            .deleteUserFromLocalStorage();
        result.fold(
          (failure) {
            emit(LogoutFailed(message: failure.message));
          },
          (data) {
            emit(
              const LogoutSuccess(
                user: null,
              ),
            );
          },
        );
      }
    });
  }
}
