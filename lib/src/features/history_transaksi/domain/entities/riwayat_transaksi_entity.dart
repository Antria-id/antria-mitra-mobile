class RiwayatTransaksiEntity {
  final String? invoice;
  final String? payment;
  final String? pemesanan;
  final bool? takeaway;
  final String? status;
  final int? pelangganId;
  final int? mitraId;
  final int? antrianId;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final List<Oderlist>? oderlist;
  final Pelanggan? pelanggan;
  final Antrian? antrian;

  RiwayatTransaksiEntity({
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
    this.oderlist,
    this.pelanggan,
    this.antrian,
  });
}

class Antrian {
  final int? id;
  final int? estimasi;
  final String? orderstatus;
  final String? pesananId;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Antrian({
    this.id,
    this.estimasi,
    this.orderstatus,
    this.pesananId,
    this.createdAt,
    this.updatedAt,
  });
}

class Oderlist {
  final int? id;
  final int? quantity;
  final String? note;
  final int? produkId;
  final String? pesananId;
  final Produk? produk;

  Oderlist({
    this.id,
    this.quantity,
    this.note,
    this.produkId,
    this.pesananId,
    this.produk,
  });
}

class Produk {
  final int? id;
  final String? namaProduk;
  final String? deskripsiProduk;
  final int? harga;
  final String? gambar;
  final int? kuantitas;
  final int? mitraId;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Produk({
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

class Pelanggan {
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

  Pelanggan({
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
