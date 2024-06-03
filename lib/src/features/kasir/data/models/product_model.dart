// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

List<ProductModel> productModelFromJson(String str) => List<ProductModel>.from(
    json.decode(str).map((x) => ProductModel.fromJson(x)));

String productModelToJson(List<ProductModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductModel {
  final int? id;
  final String? namaProduk;
  final String? deskripsiProduk;
  final int? harga;
  final String? gambar;
  final int? kuantitas;
  final int? mitraId;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  ProductModel({
    this.id,
    this.namaProduk,
    this.deskripsiProduk,
    this.harga,
    this.gambar,
    this.kuantitas,
    this.mitraId,
    this.createdAt,
    this.updatedAt,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json["id"],
        namaProduk: json["nama_produk"],
        deskripsiProduk: json["deskripsi_produk"],
        harga: json["harga"],
        gambar: json["gambar"],
        kuantitas: json["kuantitas"],
        mitraId: json["mitraId"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nama_produk": namaProduk,
        "deskripsi_produk": deskripsiProduk,
        "harga": harga,
        "gambar": gambar,
        "kuantitas": kuantitas,
        "mitraId": mitraId,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
