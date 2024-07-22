import 'dart:convert';
import 'package:equatable/equatable.dart';

MitraRequestModel mitraRequestModelFromJson(String str) =>
    MitraRequestModel.fromJson(json.decode(str));

String mitraRequestModelToJson(MitraRequestModel data) =>
    json.encode(data.toJson());

class MitraRequestModel extends Equatable {
  final String? hariBuka;
  final String? jamBuka;
  final String? jamTutup;
  final String? statusToko;

  MitraRequestModel({
    this.hariBuka,
    this.jamBuka,
    this.jamTutup,
    this.statusToko,
  });

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

  @override
  List<Object?> get props => [hariBuka, jamBuka, jamTutup, statusToko];
}
