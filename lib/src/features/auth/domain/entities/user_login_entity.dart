import 'package:equatable/equatable.dart';

class UserLoginEntity extends Equatable {
  final String username;
  final String password;

  const UserLoginEntity(
    this.username,
    this.password,
  );

  @override
  List<Object?> get props => [username, password];
}
