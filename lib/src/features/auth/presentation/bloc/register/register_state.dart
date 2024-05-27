part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = RegisterInitialState;
  const factory RegisterState.loading() = RegisterLoadingState;
  const factory RegisterState.failed(String message) = RegisterFailedState;
  const factory RegisterState.success({
    required RegisterRequest registerRequest,
  }) = RegisterSuccessState;
}
