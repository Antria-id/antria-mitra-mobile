part of 'register_bloc.dart';

sealed class RegisterEvent extends Equatable {
  const RegisterEvent();

  @override
  List<Object> get props => [];
}

final class RegisterButtonTapped extends RegisterEvent {
  final RegisterRequest request;

  const RegisterButtonTapped({required this.request});

  @override
  List<Object> get props => [request];
}
