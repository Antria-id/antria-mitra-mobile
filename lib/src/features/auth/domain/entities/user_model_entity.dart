import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final int? sub;
  final String? username;
  final String? role;
  final int? mitraId;
  final String? picture;
  final String? email;
  final int? iat;
  final int? exp;

  const UserEntity({
    this.sub,
    this.username,
    this.role,
    this.mitraId,
    this.picture,
    this.email,
    this.iat,
    this.exp,
  });

  @override
  List<Object?> get props => [
        sub,
        username,
        role,
        mitraId,
        picture,
        email,
        iat,
        exp,
      ];
}
