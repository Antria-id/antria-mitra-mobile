import 'package:equatable/equatable.dart';

class PesananInvoiceEntity extends Equatable {
  final String? invoice;
  final String? payment;
  final String? pemesanan;
  final bool? takeaway;
  final String? status;
  final int? pelangganId;
  final int? mitraId;
  final dynamic antrianId;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final PelangganEntity? pelanggan;
  final AntrianEntity? antrian;
  final List<OderlistEntity>? oderlist;

  const PesananInvoiceEntity({
    this.invoice,
    this.payment,
    this.pemesanan,
    this.takeaway,
    this.status,
    this.pelangganId,
    this.mitraId,
    this.antrianId,
    this.createdAt,
    this.updatedAt,
    this.pelanggan,
    this.antrian,
    this.oderlist,
  });

  @override
  List<Object?> get props => [
        invoice,
        payment,
        pemesanan,
        takeaway,
        status,
        pelangganId,
        mitraId,
        antrianId,
        createdAt,
        updatedAt,
        pelanggan,
        antrian,
        oderlist,
      ];
}

class AntrianEntity extends Equatable {
  final int? id;
  final int? estimasi;
  final String? orderstatus;
  final String? pesananId;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const AntrianEntity({
    this.id,
    this.estimasi,
    this.orderstatus,
    this.pesananId,
    this.createdAt,
    this.updatedAt,
  });

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

class OderlistEntity extends Equatable {
  final int? id;
  final int? quantity;
  final String? note;
  final int? produkId;
  final String? pesananId;
  final ProdukEntity? produk;

  const OderlistEntity({
    this.id,
    this.quantity,
    this.note,
    this.produkId,
    this.pesananId,
    this.produk,
  });

  @override
  List<Object?> get props => [
        id,
        quantity,
        note,
        produkId,
        pesananId,
        produk,
      ];
}

class ProdukEntity extends Equatable {
  final int? id;
  final String? namaProduk;
  final String? deskripsiProduk;
  final int? harga;
  final String? gambar;
  final int? kuantitas;
  final int? mitraId;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const ProdukEntity({
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

  @override
  List<Object?> get props => [
        id,
        namaProduk,
        deskripsiProduk,
        harga,
        gambar,
        kuantitas,
        mitraId,
        createdAt,
        updatedAt,
      ];
}

class PelangganEntity extends Equatable {
  final int? id;
  final String? username;
  final String? password;
  final String? email;
  final bool? emailVerified;
  final String? profilePicture;
  final String? nama;
  final String? handphone;
  final String? alamat;
  final int? wallet;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const PelangganEntity({
    this.id,
    this.username,
    this.password,
    this.email,
    this.emailVerified,
    this.profilePicture,
    this.nama,
    this.handphone,
    this.alamat,
    this.wallet,
    this.createdAt,
    this.updatedAt,
  });

  @override
  List<Object?> get props => [
        id,
        username,
        password,
        email,
        emailVerified,
        profilePicture,
        nama,
        handphone,
        alamat,
        wallet,
        createdAt,
        updatedAt,
      ];
}
