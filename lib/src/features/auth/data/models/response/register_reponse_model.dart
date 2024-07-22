import 'package:equatable/equatable.dart';

class RegisterResponse extends Equatable {
  final Mitra? mitra;
  final Karyawan? karyawan;

  const RegisterResponse({
    this.mitra,
    this.karyawan,
  });

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      RegisterResponse(
        mitra: json["mitra"] == null ? null : Mitra.fromJson(json["mitra"]),
        karyawan: json["karyawan"] == null
            ? null
            : Karyawan.fromJson(json["karyawan"]),
      );

  Map<String, dynamic> toJson() => {
        "mitra": mitra?.toJson(),
        "karyawan": karyawan?.toJson(),
      };

  @override
  List<Object?> get props => [mitra, karyawan];
}

class Karyawan extends Equatable {
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

  const Karyawan({
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

  factory Karyawan.fromJson(Map<String, dynamic> json) => Karyawan(
        id: json["id"],
        username: json["username"],
        password: json["password"],
        email: json["email"],
        profilePicture: json["profile_picture"],
        nama: json["nama"],
        handphone: json["handphone"],
        alamat: json["alamat"],
        isOwner: json["isOwner"],
        mitraId: json["mitraId"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "password": password,
        "email": email,
        "profile_picture": profilePicture,
        "nama": nama,
        "handphone": handphone,
        "alamat": alamat,
        "isOwner": isOwner,
        "mitraId": mitraId,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };

  @override
  List<Object?> get props => [
        id,
        username,
        password,
        email,
        profilePicture,
        nama,
        handphone,
        alamat,
        isOwner,
        mitraId,
        createdAt,
        updatedAt
      ];
}

class Mitra extends Equatable {
  final int? id;
  final String? namaToko;
  final String? deskripsiToko;
  final String? alamat;
  final String? hariBuka;
  final String? jamBuka;
  final String? jamTutup;
  final String? gambarToko;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const Mitra({
    this.id,
    this.namaToko,
    this.deskripsiToko,
    this.alamat,
    this.hariBuka,
    this.jamBuka,
    this.jamTutup,
    this.gambarToko,
    this.createdAt,
    this.updatedAt,
  });

  factory Mitra.fromJson(Map<String, dynamic> json) => Mitra(
        id: json["id"],
        namaToko: json["nama_toko"],
        deskripsiToko: json["deskripsi_toko"],
        alamat: json["alamat"],
        hariBuka: json["hari_buka"],
        jamBuka: json["jam_buka"],
        jamTutup: json["jam_tutup"],
        gambarToko: json["gambar_toko"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nama_toko": namaToko,
        "deskripsi_toko": deskripsiToko,
        "alamat": alamat,
        "hari_buka": hariBuka,
        "jam_buka": jamBuka,
        "jam_tutup": jamTutup,
        "gambar_toko": gambarToko,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };

  @override
  List<Object?> get props => [
        id,
        namaToko,
        deskripsiToko,
        alamat,
        hariBuka,
        jamBuka,
        jamTutup,
        gambarToko,
        createdAt,
        updatedAt
      ];
}
