import 'dart:convert';
import 'package:equatable/equatable.dart';

AntrianResponseModel antrianResponseModelFromJson(String str) =>
    AntrianResponseModel.fromJson(json.decode(str));

String antrianResponseModelToJson(AntrianResponseModel data) =>
    json.encode(data.toJson());

class AntrianResponseModel extends Equatable {
  final int? id;
  final int? estimasi;
  final String? orderstatus;
  final String? pesananId;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const AntrianResponseModel({
    this.id,
    this.estimasi,
    this.orderstatus,
    this.pesananId,
    this.createdAt,
    this.updatedAt,
  });

  factory AntrianResponseModel.fromJson(Map<String, dynamic> json) =>
      AntrianResponseModel(
        id: json["id"],
        estimasi: json["estimasi"],
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
        "estimasi": estimasi,
        "orderstatus": orderstatus,
        "pesananId": pesananId,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };

  @override
  List<Object?> get props => [
        id,
        estimasi,
        orderstatus,
        pesananId,
        createdAt,
        updatedAt,
      ];
}
