import 'dart:convert';
import 'package:equatable/equatable.dart';

UsahaResponseModel usahaResponseModelFromJson(String str) =>
    UsahaResponseModel.fromJson(json.decode(str));

String usahaResponseModelToJson(UsahaResponseModel data) =>
    json.encode(data.toJson());

class UsahaResponseModel extends Equatable {
  final String? namaToko;
  final String? deskripsiToko;
  final String? alamat;
  final String? linkGmaps;
  final String? gambarToko;

  UsahaResponseModel({
    this.namaToko,
    this.deskripsiToko,
    this.alamat,
    this.linkGmaps,
    this.gambarToko,
  });

  UsahaResponseModel copyWith({
    String? namaToko,
    String? deskripsiToko,
    String? alamat,
    String? linkGmaps,
    String? gambarToko,
  }) =>
      UsahaResponseModel(
        namaToko: namaToko ?? this.namaToko,
        deskripsiToko: deskripsiToko ?? this.deskripsiToko,
        alamat: alamat ?? this.alamat,
        linkGmaps: linkGmaps ?? this.linkGmaps,
        gambarToko: gambarToko ?? this.gambarToko,
      );

  factory UsahaResponseModel.fromJson(Map<String, dynamic> json) =>
      UsahaResponseModel(
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

  @override
  List<Object?> get props => [
        namaToko,
        deskripsiToko,
        alamat,
        linkGmaps,
        gambarToko,
      ];
}
