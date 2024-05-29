// To parse this JSON data, do
//
//     final mitraRequestModel = mitraRequestModelFromJson(jsonString);

import 'dart:convert';

MitraRequestModel mitraRequestModelFromJson(String str) =>
    MitraRequestModel.fromJson(json.decode(str));

String mitraRequestModelToJson(MitraRequestModel data) =>
    json.encode(data.toJson());

class MitraRequestModel {
  final String? hariBuka;
  final String? jamBuka;
  final String? jamTutup;

  MitraRequestModel({
    this.hariBuka,
    this.jamBuka,
    this.jamTutup,
  });

  factory MitraRequestModel.fromJson(Map<String, dynamic> json) =>
      MitraRequestModel(
        hariBuka: json["hari_buka"],
        jamBuka: json["jam_buka"],
        jamTutup: json["jam_tutup"],
      );

  Map<String, dynamic> toJson() => {
        "hari_buka": hariBuka,
        "jam_buka": jamBuka,
        "jam_tutup": jamTutup,
      };
}
