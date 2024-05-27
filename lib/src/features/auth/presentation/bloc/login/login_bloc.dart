import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/request/login/login_request_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/login/login_reponse_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/domain/usecases/login_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginInitialState()) {
    on<LoginEvent>((event, emit) async {
      final response = event.requestModel;
      emit(const LoginState.loading());
      var result = await serviceLocator<LoginUsecase>().loginUser(response);
      result.fold(
        (failure) {
          emit(LoginState.failed(failure.message));
        },
        (data) {
          emit(LoginState.success(responseModel: data));
        },
      );
    });
  }
}
