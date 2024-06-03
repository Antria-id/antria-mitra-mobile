class PesananBerlangsungEntity {
  final String? invoice;
  final String? payment;
  final String? pemesanan;
  final String? status;
  final int? pelangganId;
  final int? mitraId;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  PesananBerlangsungEntity({
    this.invoice,
    this.payment,
    this.pemesanan,
    this.status,
    this.pelangganId,
    this.mitraId,
    this.createdAt,
    this.updatedAt,
  });
}
