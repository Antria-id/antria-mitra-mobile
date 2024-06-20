import 'package:equatable/equatable.dart';

class UserRegisterEntity extends Equatable {
  final MitraDataEntity? mitraData;
  final KaryawanDataEntity? karyawanData;

  const UserRegisterEntity({
    this.mitraData,
    this.karyawanData,
  });

  @override
  List<Object?> get props => [mitraData, karyawanData];
}

class KaryawanDataEntity extends Equatable {
  final String? username;
  final String? password;
  final String? email;
  final String? profilePicture;
  final String? nama;
  final String? handphone;
  final String? alamat;
  final bool? isOwner;

  const KaryawanDataEntity({
    this.username,
    this.password,
    this.email,
    this.profilePicture,
    this.nama,
    this.handphone,
    this.alamat,
    this.isOwner,
  });

  @override
  List<Object?> get props => [
        username,
        password,
        email,
        profilePicture,
        nama,
        handphone,
        alamat,
        isOwner
      ];
}

class MitraDataEntity extends Equatable {
  final String? namaToko;
  final String? deskripsiToko;
  final String? alamat;
  final String? hariBuka;
  final String? jamBuka;
  final String? jamTutup;

  const MitraDataEntity({
    this.namaToko,
    this.deskripsiToko,
    this.alamat,
    this.hariBuka,
    this.jamBuka,
    this.jamTutup,
  });

  @override
  List<Object?> get props => [
        namaToko,
        deskripsiToko,
        alamat,
        hariBuka,
        jamBuka,
        jamTutup,
      ];
}
