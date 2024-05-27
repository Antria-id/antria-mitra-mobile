// To parse this JSON data, do
//
//     final updateKaryawanRequestModel = updateKaryawanRequestModelFromJson(jsonString);

import 'dart:convert';

UpdateKaryawanRequestModel updateKaryawanRequestModelFromJson(String str) =>
    UpdateKaryawanRequestModel.fromJson(json.decode(str));

String updateKaryawanRequestModelToJson(UpdateKaryawanRequestModel data) =>
    json.encode(data.toJson());

class UpdateKaryawanRequestModel {
  final String? username;
  final String? profilePicture;
  final String? email;
  final String? nama;
  final String? handphone;
  final String? alamat;

  UpdateKaryawanRequestModel({
    this.username,
    this.profilePicture,
    this.email,
    this.nama,
    this.handphone,
    this.alamat,
  });

  factory UpdateKaryawanRequestModel.fromJson(Map<String, dynamic> json) =>
      UpdateKaryawanRequestModel(
        username: json["username"],
        profilePicture: json["profile_picture"],
        email: json["email"],
        nama: json["nama"],
        handphone: json["handphone"],
        alamat: json["alamat"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "profile_picture": profilePicture,
        "email": email,
        "nama": nama,
        "handphone": handphone,
        "alamat": alamat,
      };
}
