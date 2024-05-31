// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  final int? sub;
  final String? username;
  final String? role;
  final int? mitraId;
  final String? picture;
  final String? email;
  final bool? isOwner;
  final int? iat;
  final int? exp;

  UserModel({
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
}
