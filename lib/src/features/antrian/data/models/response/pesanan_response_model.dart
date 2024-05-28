// To parse this JSON data, do
//
//     final pesananResponseModel = pesananResponseModelFromJson(jsonString);
import 'dart:convert';

List<PesananResponseModel> pesananResponseModelFromJson(String str) =>
    List<PesananResponseModel>.from(
        json.decode(str).map((x) => PesananResponseModel.fromJson(x)));

String pesananResponseModelToJson(List<PesananResponseModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PesananResponseModel {
  final String invoice;
  final String payment;
  final String pemesanan;
  final String status;
  final int pelangganId;
  final int mitraId;
  final dynamic antrianId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final List<Oderlist> oderlist;
  final Pelanggan pelanggan;
  final Antrian antrian;

  PesananResponseModel({
    required this.invoice,
    required this.payment,
    required this.pemesanan,
    required this.status,
    required this.pelangganId,
    required this.mitraId,
    required this.antrianId,
    required this.createdAt,
    required this.updatedAt,
    required this.oderlist,
    required this.pelanggan,
    required this.antrian,
  });

  factory PesananResponseModel.fromJson(Map<String, dynamic> json) =>
      PesananResponseModel(
        invoice: json["invoice"],
        payment: json["payment"],
        pemesanan: json["pemesanan"],
        status: json["status"],
        pelangganId: json["pelangganId"],
        mitraId: json["mitraId"],
        antrianId: json["antrianId"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        oderlist: List<Oderlist>.from(
            json["oderlist"].map((x) => Oderlist.fromJson(x))),
        pelanggan: Pelanggan.fromJson(json["pelanggan"]),
        antrian: Antrian.fromJson(json["antrian"]),
      );

  Map<String, dynamic> toJson() => {
        "invoice": invoice,
        "payment": payment,
        "pemesanan": pemesanan,
        "status": status,
        "pelangganId": pelangganId,
        "mitraId": mitraId,
        "antrianId": antrianId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "oderlist": List<dynamic>.from(oderlist.map((x) => x.toJson())),
        "pelanggan": pelanggan.toJson(),
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

class Oderlist {
  final int id;
  final int quantity;
  final String note;
  final int produkId;
  final String pesananId;
  final Produk produk;

  Oderlist({
    required this.id,
    required this.quantity,
    required this.note,
    required this.produkId,
    required this.pesananId,
    required this.produk,
  });

  factory Oderlist.fromJson(Map<String, dynamic> json) => Oderlist(
        id: json["id"],
        quantity: json["quantity"],
        note: json["note"],
        produkId: json["produkId"],
        pesananId: json["pesananId"],
        produk: Produk.fromJson(json["produk"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "quantity": quantity,
        "note": note,
        "produkId": produkId,
        "pesananId": pesananId,
        "produk": produk.toJson(),
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

class Pelanggan {
  final int id;
  final String username;
  final String password;
  final String email;
  final bool emailVerified;
  final String profilePicture;
  final String nama;
  final String handphone;
  final String alamat;
  final int wallet;
  final DateTime createdAt;
  final DateTime updatedAt;

  Pelanggan({
    required this.id,
    required this.username,
    required this.password,
    required this.email,
    required this.emailVerified,
    required this.profilePicture,
    required this.nama,
    required this.handphone,
    required this.alamat,
    required this.wallet,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Pelanggan.fromJson(Map<String, dynamic> json) => Pelanggan(
        id: json["id"],
        username: json["username"],
        password: json["password"],
        email: json["email"],
        emailVerified: json["emailVerified"],
        profilePicture: json["profile_picture"],
        nama: json["nama"],
        handphone: json["handphone"],
        alamat: json["alamat"],
        wallet: json["wallet"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "password": password,
        "email": email,
        "emailVerified": emailVerified,
        "profile_picture": profilePicture,
        "nama": nama,
        "handphone": handphone,
        "alamat": alamat,
        "wallet": wallet,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
