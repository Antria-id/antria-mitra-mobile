import 'dart:convert';
import 'package:equatable/equatable.dart';

DetailTransaksiModel detailTransksiModelFromJson(String str) =>
    DetailTransaksiModel.fromJson(json.decode(str));

String detailTransksiModelToJson(DetailTransaksiModel data) =>
    json.encode(data.toJson());

class DetailTransaksiModel extends Equatable {
  final String? pemesanan;
  final String? invoice;
  final String? payment;
  final bool? takeaway;
  final String? status;
  final int? pelangganId;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final Pelanggan? pelanggan;
  final List<Oderlist>? oderlist;

  DetailTransaksiModel({
    this.pemesanan,
    this.takeaway,
    this.invoice,
    this.payment,
    this.status,
    this.pelangganId,
    this.createdAt,
    this.updatedAt,
    this.pelanggan,
    this.oderlist,
  });

  factory DetailTransaksiModel.fromJson(Map<String, dynamic> json) =>
      DetailTransaksiModel(
        pemesanan: json["pemesanan"],
        invoice: json["invoice"],
        payment: json["payment"],
        status: json["status"],
        takeaway: json["takeaway"],
        pelangganId: json["pelangganId"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        pelanggan: json["pelanggan"] == null
            ? null
            : Pelanggan.fromJson(json["pelanggan"]),
        oderlist: json["oderlist"] == null
            ? []
            : List<Oderlist>.from(
                json["oderlist"]!.map((x) => Oderlist.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "invoice": invoice,
        "payment": payment,
        "status": status,
        "pelangganId": pelangganId,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "pelanggan": pelanggan?.toJson(),
        "oderlist": oderlist == null
            ? []
            : List<dynamic>.from(oderlist!.map((x) => x.toJson())),
      };

  @override
  List<Object?> get props => [
        invoice,
        payment,
        status,
        pelangganId,
        createdAt,
        updatedAt,
        pelanggan,
        oderlist,
      ];
}

class Oderlist extends Equatable {
  final int? id;
  final int? quantity;
  final int? produkId;
  final String? pesananId;
  final Produk? produk;

  Oderlist({
    this.id,
    this.quantity,
    this.produkId,
    this.pesananId,
    this.produk,
  });

  factory Oderlist.fromJson(Map<String, dynamic> json) => Oderlist(
        id: json["id"],
        quantity: json["quantity"],
        produkId: json["produkId"],
        pesananId: json["pesananId"],
        produk: json["produk"] == null ? null : Produk.fromJson(json["produk"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "quantity": quantity,
        "produkId": produkId,
        "pesananId": pesananId,
        "produk": produk?.toJson(),
      };

  @override
  List<Object?> get props => [
        id,
        quantity,
        produkId,
        pesananId,
        produk,
      ];
}

class Produk extends Equatable {
  final int? id;
  final String? namaProduk;
  final String? deskripsiProduk;
  final int? harga;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Produk({
    this.id,
    this.deskripsiProduk,
    this.namaProduk,
    this.harga,
    this.createdAt,
    this.updatedAt,
  });

  factory Produk.fromJson(Map<String, dynamic> json) => Produk(
        id: json["id"],
        namaProduk: json["nama_produk"],
        harga: json["harga"],
        deskripsiProduk: json["deskripsi_produk"],
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
        "harga": harga,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };

  @override
  List<Object?> get props => [
        id,
        namaProduk,
        harga,
        createdAt,
        updatedAt,
      ];
}

class Pelanggan extends Equatable {
  final int? id;
  final String? username;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Pelanggan({
    this.id,
    this.username,
    this.createdAt,
    this.updatedAt,
  });

  factory Pelanggan.fromJson(Map<String, dynamic> json) => Pelanggan(
        id: json["id"],
        username: json["username"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };

  @override
  List<Object?> get props => [
        id,
        username,
        createdAt,
        updatedAt,
      ];
}
