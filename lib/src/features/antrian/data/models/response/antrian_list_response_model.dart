import 'dart:convert';

import 'package:antria_mitra_mobile/src/features/antrian/data/models/response/pesanan_invoice_response.dart';

List<AntrianListModel> antrianListModelFromJson(String str) =>
    List<AntrianListModel>.from(
        json.decode(str).map((x) => AntrianListModel.fromJson(x)));

String antrianListModelToJson(List<AntrianListModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AntrianListModel {
  final int id;
  final int estimasi;
  final String orderstatus;
  final String pesananId;
  final DateTime createdAt;
  final DateTime updatedAt;
  PesananInvoiceResponseModel? pesanan;

  AntrianListModel({
    required this.id,
    required this.estimasi,
    required this.orderstatus,
    required this.pesananId,
    required this.createdAt,
    required this.updatedAt,
    this.pesanan,
  });

  AntrianListModel copyWith({
    int? id,
    int? estimasi,
    String? orderstatus,
    String? pesananId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      AntrianListModel(
        id: id ?? this.id,
        estimasi: estimasi ?? this.estimasi,
        orderstatus: orderstatus ?? this.orderstatus,
        pesananId: pesananId ?? this.pesananId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory AntrianListModel.fromJson(Map<String, dynamic> json) =>
      AntrianListModel(
        id: json["id"],
        estimasi: json["estimasi"],
        orderstatus: json["orderstatus"],
        pesananId: json["pesananId"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "estimasi": estimasi,
        "orderstatus": orderstatus,
        "pesananId": pesananId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
