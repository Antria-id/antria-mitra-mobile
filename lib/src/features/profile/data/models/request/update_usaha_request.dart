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
  final String? linkGmaps;
  final String? gambarToko;

  UpdateUsahaRequestModel({
    this.namaToko,
    this.deskripsiToko,
    this.alamat,
    this.linkGmaps,
    this.gambarToko,
  });

  UpdateUsahaRequestModel copyWith({
    String? namaToko,
    String? deskripsiToko,
    String? alamat,
    String? linkGmaps,
    String? gambarToko,
  }) =>
      UpdateUsahaRequestModel(
        namaToko: namaToko ?? this.namaToko,
        deskripsiToko: deskripsiToko ?? this.deskripsiToko,
        alamat: alamat ?? this.alamat,
        linkGmaps: linkGmaps ?? this.linkGmaps,
        gambarToko: gambarToko ?? this.gambarToko,
      );

  factory UpdateUsahaRequestModel.fromJson(Map<String, dynamic> json) =>
      UpdateUsahaRequestModel(
        namaToko: json["nama_toko"],
        deskripsiToko: json["deskripsi_toko"],
        alamat: json["alamat"],
        linkGmaps: json["linkGmaps"],
        gambarToko: json["gambar_toko"],
      );

  Map<String, dynamic> toJson() => {
        "nama_toko": namaToko,
        "deskripsi_toko": deskripsiToko,
        "alamat": alamat,
        "linkGmaps": linkGmaps,
        "gambar_toko": gambarToko,
      };
}
