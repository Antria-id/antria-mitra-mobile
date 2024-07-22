import 'package:equatable/equatable.dart';
import 'dart:convert';

List<UlasanResponse> ulasanResponseFromJson(String str) =>
    List<UlasanResponse>.from(
        json.decode(str).map((x) => UlasanResponse.fromJson(x)));

String ulasanResponseToJson(List<UlasanResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UlasanResponse extends Equatable {
  final String? komentar;
  final int? rating;
  final int? mitraId;
  final int? pelangganId;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final Reviewer? reviewer;

  UlasanResponse({
    this.komentar,
    this.rating,
    this.mitraId,
    this.pelangganId,
    this.createdAt,
    this.updatedAt,
    this.reviewer,
  });

  factory UlasanResponse.fromJson(Map<String, dynamic> json) => UlasanResponse(
        komentar: json["komentar"],
        rating: json["rating"],
        mitraId: json["mitraId"],
        pelangganId: json["pelangganId"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        reviewer: json["reviewer"] == null
            ? null
            : Reviewer.fromJson(json["reviewer"]),
      );

  Map<String, dynamic> toJson() => {
        "komentar": komentar,
        "rating": rating,
        "mitraId": mitraId,
        "pelangganId": pelangganId,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "reviewer": reviewer?.toJson(),
      };

  @override
  List<Object?> get props => [
        komentar,
        rating,
        mitraId,
        pelangganId,
        createdAt,
        updatedAt,
        reviewer,
      ];
}

class Reviewer extends Equatable {
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

  Reviewer({
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

  factory Reviewer.fromJson(Map<String, dynamic> json) => Reviewer(
        id: json["id"],
        username: json["username"],
        password: json["password"],
        email: json["email"],
        emailVerified: json["emailVerified"],
        profilePicture: json["profile_picture"],
        nama: json["nama"],
        handphone: json["handphone"],
        alamat: json["alamat"],
        wallet: json["wallet"],
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
        "emailVerified": emailVerified,
        "profile_picture": profilePicture,
        "nama": nama,
        "handphone": handphone,
        "alamat": alamat,
        "wallet": wallet,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };

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
