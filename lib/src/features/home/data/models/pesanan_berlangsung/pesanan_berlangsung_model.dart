// To parse this JSON data, do
//
//     final pesananBerlangsungModel = pesananBerlangsungModelFromJson(jsonString);

import 'dart:convert';

List<PesananBerlangsungModel> pesananBerlangsungModelFromJson(String str) =>
    List<PesananBerlangsungModel>.from(
        json.decode(str).map((x) => PesananBerlangsungModel.fromJson(x)));

String pesananBerlangsungModelToJson(List<PesananBerlangsungModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PesananBerlangsungModel {
  final String? invoice;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final Antrian? antrian;

  PesananBerlangsungModel({
    this.invoice,
    this.createdAt,
    this.updatedAt,
    this.antrian,
  });

  factory PesananBerlangsungModel.fromJson(Map<String, dynamic> json) =>
      PesananBerlangsungModel(
        invoice: json["invoice"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        antrian:
            json["antrian"] == null ? null : Antrian.fromJson(json["antrian"]),
      );

  Map<String, dynamic> toJson() => {
        "invoice": invoice,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "antrian": antrian?.toJson(),
      };
}

class Antrian {
  final int? id;
  final String? orderstatus;
  final String? pesananId;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Antrian({
    this.id,
    this.orderstatus,
    this.pesananId,
    this.createdAt,
    this.updatedAt,
  });

  factory Antrian.fromJson(Map<String, dynamic> json) => Antrian(
        id: json["id"],
        orderstatus: json["orderstatus"],
        pesananId: json["pesananId"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "orderstatus": orderstatus,
        "pesananId": pesananId,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
