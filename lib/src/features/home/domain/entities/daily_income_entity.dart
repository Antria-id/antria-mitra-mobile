class DailyIncomeEntity {
  final String invoice;
  final int pelangganId;
  final int mitraId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final AntrianEntity antrian;

  DailyIncomeEntity({
    required this.invoice,
    required this.pelangganId,
    required this.mitraId,
    required this.createdAt,
    required this.updatedAt,
    required this.antrian,
  });
}

class AntrianEntity {
  final int id;
  final int estimasi;
  final String orderstatus;
  final String pesananId;
  final DateTime createdAt;
  final DateTime updatedAt;

  AntrianEntity({
    required this.id,
    required this.estimasi,
    required this.orderstatus,
    required this.pesananId,
    required this.createdAt,
    required this.updatedAt,
  });
}

class ProdukEntity {
  final int id;
  final String namaProduk;
  final String deskripsiProduk;
  final int harga;
  final String gambar;
  final int kuantitas;
  final int mitraId;
  final DateTime createdAt;
  final DateTime updatedAt;

  ProdukEntity({
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
