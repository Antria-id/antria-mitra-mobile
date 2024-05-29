class DetailTransaksiEntity {
  final String? invoice;
  final String? payment;
  final String? status;
  final int? pelangganId;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final Pelanggan? pelanggan;
  final List<Oderlist>? oderlist;

  DetailTransaksiEntity({
    this.invoice,
    this.payment,
    this.status,
    this.pelangganId,
    this.createdAt,
    this.updatedAt,
    this.pelanggan,
    this.oderlist,
  });
}

class Oderlist {
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
}

class Produk {
  final int? id;
  final String? namaProduk;
  final int? harga;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Produk({
    this.id,
    this.namaProduk,
    this.harga,
    this.createdAt,
    this.updatedAt,
  });
}

class Pelanggan {
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
}
