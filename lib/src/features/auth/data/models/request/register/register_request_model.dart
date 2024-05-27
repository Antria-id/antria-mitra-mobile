// To parse this JSON data, do
//
//     final registerRequest = registerRequestFromJson(jsonString);

import 'dart:convert';

RegisterRequest registerRequestFromJson(String str) =>
    RegisterRequest.fromJson(json.decode(str));

String registerRequestToJson(RegisterRequest data) =>
    json.encode(data.toJson());

class RegisterRequest {
  final MitraData? mitraData;
  final KaryawanData? karyawanData;

  RegisterRequest({
    this.mitraData,
    this.karyawanData,
  });

  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      RegisterRequest(
        mitraData: json["mitraData"] == null
            ? null
            : MitraData.fromJson(json["mitraData"]),
        karyawanData: json["karyawanData"] == null
            ? null
            : KaryawanData.fromJson(json["karyawanData"]),
      );

  Map<String, dynamic> toJson() => {
        "mitraData": mitraData?.toJson(),
        "karyawanData": karyawanData?.toJson(),
      };
}

class KaryawanData {
  final String? username;
  final String? password;
  final String? email;
  final String? profilePicture;
  final String? nama;
  final String? handphone;
  final String? alamat;
  final bool? isOwner;

  KaryawanData({
    this.username,
    this.password,
    this.email,
    this.profilePicture,
    this.nama,
    this.handphone,
    this.alamat,
    this.isOwner,
  });

  factory KaryawanData.fromJson(Map<String, dynamic> json) => KaryawanData(
        username: json["username"],
        password: json["password"],
        email: json["email"],
        profilePicture: json["profile_picture"],
        nama: json["nama"],
        handphone: json["handphone"],
        alamat: json["alamat"],
        isOwner: json["isOwner"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "password": password,
        "email": email,
        "profile_picture": profilePicture,
        "nama": nama,
        "handphone": handphone,
        "alamat": alamat,
        "isOwner": isOwner,
      };
}

class MitraData {
  final String? namaToko;
  final String? deskripsiToko;
  final String? alamat;
  final String? hariBuka;
  final String? jamBuka;
  final String? jamTutup;

  MitraData({
    this.namaToko,
    this.deskripsiToko,
    this.alamat,
    this.hariBuka,
    this.jamBuka,
    this.jamTutup,
  });

  factory MitraData.fromJson(Map<String, dynamic> json) => MitraData(
        namaToko: json["nama_toko"],
        deskripsiToko: json["deskripsi_toko"],
        alamat: json["alamat"],
        hariBuka: json["hari_buka"],
        jamBuka: json["jam_buka"],
        jamTutup: json["jam_tutup"],
      );

  Map<String, dynamic> toJson() => {
        "nama_toko": namaToko,
        "deskripsi_toko": deskripsiToko,
        "alamat": alamat,
        "hari_buka": hariBuka,
        "jam_buka": jamBuka,
        "jam_tutup": jamTutup,
      };
}
