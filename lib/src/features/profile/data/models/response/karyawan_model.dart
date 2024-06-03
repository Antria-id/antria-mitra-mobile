// To parse this JSON data, do
//
//     final karyawanModel = karyawanModelFromJson(jsonString);

import 'dart:convert';

KaryawanModel karyawanModelFromJson(String str) =>
    KaryawanModel.fromJson(json.decode(str));

String karyawanModelToJson(KaryawanModel data) => json.encode(data.toJson());

class KaryawanModel {
  final int? id;
  final String? username;
  final String? password;
  final String? email;
  final String? profilePicture;
  final String? nama;
  final String? handphone;
  final String? alamat;
  final bool? isOwner;
  final int? mitraId;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  KaryawanModel({
    this.id,
    this.username,
    this.password,
    this.email,
    this.profilePicture,
    this.nama,
    this.handphone,
    this.alamat,
    this.isOwner,
    this.mitraId,
    this.createdAt,
    this.updatedAt,
  });

  factory KaryawanModel.fromJson(Map<String, dynamic> json) => KaryawanModel(
        id: json["id"],
        username: json["username"],
        password: json["password"],
        email: json["email"],
        profilePicture: json["profile_picture"],
        nama: json["nama"],
        handphone: json["handphone"],
        alamat: json["alamat"],
        isOwner: json["isOwner"],
        mitraId: json["mitraId"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "password": password,
        "email": email,
        "profile_picture": profilePicture,
        "nama": nama,
        "handphone": handphone,
        "alamat": alamat,
        "isOwner": isOwner,
        "mitraId": mitraId,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
