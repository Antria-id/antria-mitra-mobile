import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/request/register/register_request_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/register/register_reponse_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/domain/usecases/register_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterInitial()) {
    on<RegisterEvent>((event, emit) async {
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
    });
  }
}
