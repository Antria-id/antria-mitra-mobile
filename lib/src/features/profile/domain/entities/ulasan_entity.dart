class UlasanResponseEntity {
  final String? komentar;
  final int? rating;
  final int? mitraId;
  final int? pelangganId;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final ReviewerEntity? reviewer;

  UlasanResponseEntity({
    this.komentar,
    this.rating,
    this.mitraId,
    this.pelangganId,
    this.createdAt,
    this.updatedAt,
    this.reviewer,
  });
}

class ReviewerEntity {
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

  ReviewerEntity({
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
