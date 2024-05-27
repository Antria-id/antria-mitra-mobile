import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/request/register/register_request_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/domain/usecases/register_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(const RegisterInitialState()) {
    on<RegisterEvent>((event, emit) async {
      final user = event.requestUser;
      emit(const RegisterState.loading());
      var result = await serviceLocator<RegisterUsecase>().registerUser(user);
      result.fold(
        (failure) {
          emit(RegisterState.failed(failure.message));
        },
        (data) {
          emit(
            RegisterState.success(
              registerRequest: user,
            ),
          );
        },
      );
    });
  }
}
