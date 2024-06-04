// To parse this JSON data, do
//
//     final mitraModel = mitraModelFromJson(jsonString);

import 'dart:convert';

MitraModel mitraModelFromJson(String str) =>
    MitraModel.fromJson(json.decode(str));

String mitraModelToJson(MitraModel data) => json.encode(data.toJson());

class MitraModel {
  final int? review;
  final int? id;
  final String? namaToko;
  final String? deskripsiToko;
  final String? alamat;
  final String? linkGmaps;
  final String? hariBuka;
  final String? jamBuka;
  final String? jamTutup;
  final String? gambarToko;
  final bool? subscription;
  final String? statusToko;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  MitraModel({
    this.review,
    this.id,
    this.namaToko,
    this.deskripsiToko,
    this.alamat,
    this.linkGmaps,
    this.hariBuka,
    this.jamBuka,
    this.jamTutup,
    this.gambarToko,
    this.subscription,
    this.statusToko,
    this.createdAt,
    this.updatedAt,
  });

  MitraModel copyWith({
    int? review,
    int? id,
    String? namaToko,
    String? deskripsiToko,
    String? alamat,
    String? linkGmaps,
    String? hariBuka,
    String? jamBuka,
    String? jamTutup,
    String? gambarToko,
    bool? subscription,
    String? statusToko,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      MitraModel(
        review: review ?? this.review,
        id: id ?? this.id,
        namaToko: namaToko ?? this.namaToko,
        deskripsiToko: deskripsiToko ?? this.deskripsiToko,
        alamat: alamat ?? this.alamat,
        linkGmaps: linkGmaps ?? this.linkGmaps,
        hariBuka: hariBuka ?? this.hariBuka,
        jamBuka: jamBuka ?? this.jamBuka,
        jamTutup: jamTutup ?? this.jamTutup,
        gambarToko: gambarToko ?? this.gambarToko,
        subscription: subscription ?? this.subscription,
        statusToko: statusToko ?? this.statusToko,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory MitraModel.fromJson(Map<String, dynamic> json) => MitraModel(
        review: json["review"],
        id: json["id"],
        namaToko: json["nama_toko"],
        deskripsiToko: json["deskripsi_toko"],
        alamat: json["alamat"],
        linkGmaps: json["linkGmaps"],
        hariBuka: json["hari_buka"],
        jamBuka: json["jam_buka"],
        jamTutup: json["jam_tutup"],
        gambarToko: json["gambar_toko"],
        subscription: json["subscription"],
        statusToko: json["status_toko"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "review": review,
        "id": id,
        "nama_toko": namaToko,
        "deskripsi_toko": deskripsiToko,
        "alamat": alamat,
        "linkGmaps": linkGmaps,
        "hari_buka": hariBuka,
        "jam_buka": jamBuka,
        "jam_tutup": jamTutup,
        "gambar_toko": gambarToko,
        "subscription": subscription,
        "status_toko": statusToko,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
