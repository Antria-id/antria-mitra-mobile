import 'dart:convert';
import 'package:equatable/equatable.dart';

KaryawanModel karyawanModelFromJson(String str) =>
    KaryawanModel.fromJson(json.decode(str));

String karyawanModelToJson(KaryawanModel data) => json.encode(data.toJson());

class KaryawanModel extends Equatable {
  final int id;
  final String username;
  final String password;
  final String email;
  final String profilePicture;
  final String nama;
  final String handphone;
  final String alamat;
  final bool isOwner;
  final int mitraId;
  final DateTime createdAt;
  final DateTime updatedAt;

  KaryawanModel({
    required this.id,
    required this.username,
    required this.password,
    required this.email,
    required this.profilePicture,
    required this.nama,
    required this.handphone,
    required this.alamat,
    required this.isOwner,
    required this.mitraId,
    required this.createdAt,
    required this.updatedAt,
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
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
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
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };

  @override
  List<Object?> get props => [
        id,
        username,
        password,
        email,
        profilePicture,
        nama,
        handphone,
        alamat,
        isOwner,
        mitraId,
        createdAt,
        updatedAt,
      ];
}
