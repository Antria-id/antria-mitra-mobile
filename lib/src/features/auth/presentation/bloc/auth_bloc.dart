import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/request/login_request_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/request/register_request_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/login_reponse_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/register_reponse_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/user_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/domain/usecases/login_usecase.dart';
import 'package:antria_mitra_mobile/src/features/auth/domain/usecases/register_usecase.dart';
import 'package:antria_mitra_mobile/src/features/auth/domain/usecases/logout_user_usecase.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) async {
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

      if (event is RegisterButtonTapped) {
        final response = event.request;
        emit(RegisterLoading());
        var result =
            await serviceLocator<RegisterUsecase>().registerUser(response);
        result.fold(
          (failure) {
            emit(RegisterFailed(message: failure.message));
          },
          (data) {
            emit(
              RegisterSuccess(response: data),
            );
          },
        );
      }

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
