import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final int? sub;
  final String? username;
  final String? role;
  final int? mitraId;
  final String? picture;
  final String? email;
  final bool? isOwner;
  final int? iat;
  final int? exp;

  const UserModel({
    this.sub,
    this.username,
    this.role,
    this.mitraId,
    this.picture,
    this.email,
    this.isOwner,
    this.iat,
    this.exp,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        sub: json["sub"],
        username: json["username"],
        role: json["role"],
        mitraId: json["mitraId"],
        picture: json["picture"],
        email: json["email"],
        isOwner: json["isOwner"],
        iat: json["iat"],
        exp: json["exp"],
      );

  Map<String, dynamic> toJson() => {
        "sub": sub,
        "username": username,
        "role": role,
        "mitraId": mitraId,
        "picture": picture,
        "email": email,
        "isOwner": isOwner,
        "iat": iat,
        "exp": exp,
      };

  @override
  List<Object?> get props => [
        sub,
        username,
        role,
        mitraId,
        picture,
        email,
        isOwner,
        iat,
        exp,
      ];
}
