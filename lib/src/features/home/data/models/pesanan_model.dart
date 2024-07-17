import 'dart:convert';

List<PesananModel> pesananBerlangsungModelFromJson(String str) =>
    List<PesananModel>.from(
        json.decode(str).map((x) => PesananModel.fromJson(x)));

String pesananBerlangsungModelToJson(List<PesananModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PesananModel {
  final String? invoice;
  final int? pelangganId;
  final int? mitraId;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final Antrian? antrian;

  PesananModel({
    this.invoice,
    required this.pelangganId,
    required this.mitraId,
    this.createdAt,
    this.updatedAt,
    this.antrian,
  });

  factory PesananModel.fromJson(Map<String, dynamic> json) => PesananModel(
        invoice: json["invoice"],
        pelangganId: json["pelanggan_id"],
        mitraId: json["mitra_id"],
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
        "pelanggan_id": pelangganId,
        "mitra_id": mitraId,
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
