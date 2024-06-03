// To parse this JSON data, do
//
//     final usahaResponseModel = usahaResponseModelFromJson(jsonString);

import 'dart:convert';

UsahaResponseModel usahaResponseModelFromJson(String str) =>
    UsahaResponseModel.fromJson(json.decode(str));

String usahaResponseModelToJson(UsahaResponseModel data) =>
    json.encode(data.toJson());

class UsahaResponseModel {
  final int id;
  final String namaToko;
  final String deskripsiToko;
  final String alamat;
  final String gambarToko;

  UsahaResponseModel({
    required this.id,
    required this.namaToko,
    required this.deskripsiToko,
    required this.alamat,
    required this.gambarToko,
  });

  factory UsahaResponseModel.fromJson(Map<String, dynamic> json) =>
      UsahaResponseModel(
        id: json["id"],
        namaToko: json["nama_toko"],
        deskripsiToko: json["deskripsi_toko"],
        alamat: json["alamat"],
        gambarToko: json["gambar_toko"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nama_toko": namaToko,
        "deskripsi_toko": deskripsiToko,
        "alamat": alamat,
        "gambar_toko": gambarToko,
      };
}
