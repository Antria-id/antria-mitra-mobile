// To parse this JSON data, do
//
//     final updateUsahaRequestModel = updateUsahaRequestModelFromJson(jsonString);

import 'dart:convert';

UpdateUsahaRequestModel updateUsahaRequestModelFromJson(String str) =>
    UpdateUsahaRequestModel.fromJson(json.decode(str));

String updateUsahaRequestModelToJson(UpdateUsahaRequestModel data) =>
    json.encode(data.toJson());

class UpdateUsahaRequestModel {
  final String? namaToko;
  final String? deskripsiToko;
  final String? alamat;
  final String? gambarToko;

  UpdateUsahaRequestModel({
    this.namaToko,
    this.deskripsiToko,
    this.alamat,
    this.gambarToko,
  });

  factory UpdateUsahaRequestModel.fromJson(Map<String, dynamic> json) =>
      UpdateUsahaRequestModel(
        namaToko: json["nama_toko"],
        deskripsiToko: json["deskripsi_toko"],
        alamat: json["alamat"],
        gambarToko: json["gambar_toko"],
      );

  Map<String, dynamic> toJson() => {
        "nama_toko": namaToko,
        "deskripsi_toko": deskripsiToko,
        "alamat": alamat,
        "gambar_toko": gambarToko,
      };
}
