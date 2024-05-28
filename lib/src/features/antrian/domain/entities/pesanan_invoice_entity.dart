class PesananInvoiceEntity {
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

  PesananInvoiceEntity({
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
}

class AntrianEntity {
  final int? id;
  final int? estimasi;
  final String? orderstatus;
  final String? pesananId;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  AntrianEntity({
    this.id,
    this.estimasi,
    this.orderstatus,
    this.pesananId,
    this.createdAt,
    this.updatedAt,
  });
}

class OderlistEntity {
  final int? id;
  final int? quantity;
  final String? note;
  final int? produkId;
  final String? pesananId;
  final ProdukEntity? produk;

  OderlistEntity({
    this.id,
    this.quantity,
    this.note,
    this.produkId,
    this.pesananId,
    this.produk,
  });
}

class ProdukEntity {
  final int? id;
  final String? namaProduk;
  final String? deskripsiProduk;
  final int? harga;
  final String? gambar;
  final int? kuantitas;
  final int? mitraId;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  ProdukEntity({
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
}

class PelangganEntity {
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

  PelangganEntity({
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
}
