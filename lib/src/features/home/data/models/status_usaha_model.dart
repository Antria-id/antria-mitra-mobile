import 'package:equatable/equatable.dart';

class StatusUsahaModel extends Equatable {
  final int? id;
  final String? hariBuka;
  final String? jamBuka;
  final String? jamTutup;
  final String? statusToko;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  StatusUsahaModel({
    this.id,
    this.hariBuka,
    this.jamBuka,
    this.jamTutup,
    this.statusToko,
    this.createdAt,
    this.updatedAt,
  });

  factory StatusUsahaModel.fromJson(Map<String, dynamic> json) =>
      StatusUsahaModel(
        id: json["id"],
        hariBuka: json["hari_buka"],
        jamBuka: json["jam_buka"],
        jamTutup: json["jam_tutup"],
        statusToko: json["status_toko"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "hari_buka": hariBuka,
        "jam_buka": jamBuka,
        "jam_tutup": jamTutup,
        "status_toko": statusToko,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };

  @override
  List<Object?> get props => [
        id,
        hariBuka,
        jamBuka,
        jamTutup,
        statusToko,
        createdAt,
        updatedAt,
      ];
}
