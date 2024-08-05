import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/request/login_request_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/request/register_request_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/login_reponse_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/register_reponse_model.dart';

import 'package:antria_mitra_mobile/src/features/auth/data/models/response/user_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/verify_otp_response_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/domain/usecases/login_usecase.dart';
import 'package:antria_mitra_mobile/src/features/auth/domain/usecases/otp_usecase.dart';
import 'package:antria_mitra_mobile/src/features/auth/domain/usecases/register_usecase.dart';
import 'package:antria_mitra_mobile/src/features/auth/domain/usecases/logout_user_usecase.dart';
import 'package:antria_mitra_mobile/src/features/auth/domain/usecases/reset_password_usecase.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) async {
      if (event is LoginButtonTapped) {
        final request = event.request;
        emit(LoginLoading());
        var result = await serviceLocator<LoginUsecase>().call(request);
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
        final request = event.request;
        emit(RegisterLoading());
        var result = await serviceLocator<RegisterUsecase>().call(request);
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

      if (event is SendEmailTapped) {
        final request = event.email;
        emit(SendOTPLoading());
        var result = await serviceLocator<OTPUsecase>().sendOtp(email: request);
        result.fold(
          (failure) {
            emit(SendOTPFailed(message: failure.message));
          },
          (data) {
            emit(
              SendOTPSuccess(email: request),
            );
          },
        );
      }

      if (event is VerifyOTPTapped) {
        final requestEmail = event.email;
        final requestOtp = event.otp;
        emit(VerifyOTPLoading());
        var result = await serviceLocator<OTPUsecase>()
            .verifyOTP(email: requestEmail, otp: requestOtp);
        result.fold(
          (failure) {
            emit(VerifyOTPFailed(message: failure.message));
          },
          (data) {
            emit(
              VerifyOTPSuccess(response: data),
            );
          },
        );
      }

      if (event is UpdatePasswordTapped) {
        final requestId = event.id;
        final requestPassword = event.password;
        final requestToken = event.token;
        emit(UpdatePasswordLoading());
        var result =
            await serviceLocator<ResetPasswordUsecase>().updatePassword(
          id: requestId,
          password: requestPassword,
          token: requestToken,
        );
        result.fold(
          (failure) {
            emit(UpdatePasswordFailed(message: failure.message));
          },
          (data) {
            emit(
              UpdatePasswordSuccess(password: requestPassword),
            );
          },
        );
      }

      if (event is LogoutTapped) {
        emit(LogoutLoading());
        var result = await serviceLocator<LogoutUserUsecase>().call();
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
