class PesananResponseModel {
  final String invoice;
  final String payment;
  final String pemesanan;
  final String status;
  final int pelangganId;
  final int mitraId;
  final int? antrianId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final List<Oderlist> oderlist;
  final Pelanggan pelanggan;
  final Antrian? antrian;

  PesananResponseModel({
    required this.invoice,
    required this.payment,
    required this.pemesanan,
    required this.status,
    required this.pelangganId,
    required this.mitraId,
    this.antrianId,
    required this.createdAt,
    required this.updatedAt,
    required this.oderlist,
    required this.pelanggan,
    this.antrian,
  });
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
}
