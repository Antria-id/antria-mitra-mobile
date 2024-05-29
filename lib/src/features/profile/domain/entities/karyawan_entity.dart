class KaryawanEntity {
  final int? id;
  final String? username;
  final String? password;
  final String? email;
  final String? profilePicture;
  final String? nama;
  final String? handphone;
  final String? alamat;
  final bool? isOwner;
  final int? mitraId;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  KaryawanEntity({
    this.id,
    this.username,
    this.password,
    this.email,
    this.profilePicture,
    this.nama,
    this.handphone,
    this.alamat,
    this.isOwner,
    this.mitraId,
    this.createdAt,
    this.updatedAt,
  });
}
