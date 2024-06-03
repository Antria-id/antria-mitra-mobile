import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/request/login/login_request_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/login/login_reponse_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/domain/usecases/login_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginEvent>((event, emit) async {
      if (event is LoginButtonTapped) {
        final response = event.request;
        emit(LoginLoading());
        var result = await serviceLocator<LoginUsecase>().loginUser(response);
        result.fold(
          (failure) {
            emit(LoginFailed(message: failure.message));
          },
          (data) {
            emit(
              LoginSuccess(response: data),
            );
          },
        );
      }
    });
  }
}
