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
  final String? payment;
  final String? pemesanan;
  final String? status;
  final int? pelangganId;
  final int? mitraId;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  PesananBerlangsungModel({
    this.invoice,
    this.payment,
    this.pemesanan,
    this.status,
    this.pelangganId,
    this.mitraId,
    this.createdAt,
    this.updatedAt,
  });

  factory PesananBerlangsungModel.fromJson(Map<String, dynamic> json) =>
      PesananBerlangsungModel(
        invoice: json["invoice"],
        payment: json["payment"],
        pemesanan: json["pemesanan"],
        status: json["status"],
        pelangganId: json["pelangganId"],
        mitraId: json["mitraId"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "invoice": invoice,
        "payment": payment,
        "pemesanan": pemesanan,
        "status": status,
        "pelangganId": pelangganId,
        "mitraId": mitraId,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
