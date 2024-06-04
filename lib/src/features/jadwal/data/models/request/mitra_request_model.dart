// To parse this JSON data, do
//
//     final mitraRequestModel = mitraRequestModelFromJson(jsonString);

import 'dart:convert';

MitraRequestModel mitraRequestModelFromJson(String str) =>
    MitraRequestModel.fromJson(json.decode(str));

String mitraRequestModelToJson(MitraRequestModel data) =>
    json.encode(data.toJson());

class MitraRequestModel {
  String? hariBuka;
  String? jamBuka;
  String? jamTutup;
  String? statusToko;

  MitraRequestModel({
    this.hariBuka,
    this.jamBuka,
    this.jamTutup,
    this.statusToko,
  });

  MitraRequestModel copyWith({
    String? hariBuka,
    String? jamBuka,
    String? jamTutup,
    String? statusToko,
  }) =>
      MitraRequestModel(
        hariBuka: hariBuka ?? this.hariBuka,
        jamBuka: jamBuka ?? this.jamBuka,
        jamTutup: jamTutup ?? this.jamTutup,
        statusToko: statusToko ?? this.statusToko,
      );

  factory MitraRequestModel.fromJson(Map<String, dynamic> json) =>
      MitraRequestModel(
        hariBuka: json["hari_buka"],
        jamBuka: json["jam_buka"],
        jamTutup: json["jam_tutup"],
        statusToko: json["status_toko"],
      );

  Map<String, dynamic> toJson() => {
        "hari_buka": hariBuka,
        "jam_buka": jamBuka,
        "jam_tutup": jamTutup,
        "status_toko": statusToko,
      };
}
