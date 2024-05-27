// To parse this JSON data, do
//
//     final pesananResponseModel = pesananResponseModelFromJson(jsonString);
import 'dart:convert';

List<DailyIncome> pesananResponseModelFromJson(String str) =>
    List<DailyIncome>.from(
        json.decode(str).map((x) => DailyIncome.fromJson(x)));

String pesananResponseModelToJson(List<DailyIncome> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DailyIncome {
  final String invoice;
  final int pelangganId;
  final int mitraId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final Antrian antrian;

  DailyIncome({
    required this.invoice,
    required this.pelangganId,
    required this.mitraId,
    required this.createdAt,
    required this.updatedAt,
    required this.antrian,
  });

  factory DailyIncome.fromJson(Map<String, dynamic> json) => DailyIncome(
        invoice: json["invoice"],
        pelangganId: json["pelangganId"],
        mitraId: json["mitraId"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        antrian: Antrian.fromJson(json["antrian"]),
      );

  Map<String, dynamic> toJson() => {
        "invoice": invoice,
        "pelangganId": pelangganId,
        "mitraId": mitraId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "antrian": antrian.toJson(),
      };
}

class Antrian {
  final int id;
  final int estimasi;
  final String orderstatus;
  final String pesananId;
  final DateTime createdAt;
  final DateTime updatedAt;

  Antrian({
    required this.id,
    required this.estimasi,
    required this.orderstatus,
    required this.pesananId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Antrian.fromJson(Map<String, dynamic> json) => Antrian(
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

class Produk {
  final int id;
  final String namaProduk;
  final String deskripsiProduk;
  final int harga;
  final String gambar;
  final int kuantitas;
  final int mitraId;
  final DateTime createdAt;
  final DateTime updatedAt;

  Produk({
    required this.id,
    required this.namaProduk,
    required this.deskripsiProduk,
    required this.harga,
    required this.gambar,
    required this.kuantitas,
    required this.mitraId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Produk.fromJson(Map<String, dynamic> json) => Produk(
        id: json["id"],
        namaProduk: json["nama_produk"],
        deskripsiProduk: json["deskripsi_produk"],
        harga: json["harga"],
        gambar: json["gambar"],
        kuantitas: json["kuantitas"],
        mitraId: json["mitraId"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nama_produk": namaProduk,
        "deskripsi_produk": deskripsiProduk,
        "harga": harga,
        "gambar": gambar,
        "kuantitas": kuantitas,
        "mitraId": mitraId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
