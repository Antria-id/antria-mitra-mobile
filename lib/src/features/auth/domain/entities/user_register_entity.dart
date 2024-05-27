class UserRegisterEntity {
  final MitraDataEntity? mitraData;
  final KaryawanDataEntity? karyawanData;

  UserRegisterEntity({
    this.mitraData,
    this.karyawanData,
  });
}

class KaryawanDataEntity {
  final String? username;
  final String? password;
  final String? email;
  final String? profilePicture;
  final String? nama;
  final String? handphone;
  final String? alamat;
  final bool? isOwner;

  KaryawanDataEntity({
    this.username,
    this.password,
    this.email,
    this.profilePicture,
    this.nama,
    this.handphone,
    this.alamat,
    this.isOwner,
  });
}

class MitraDataEntity {
  final String? namaToko;
  final String? deskripsiToko;
  final String? alamat;
  final String? hariBuka;
  final String? jamBuka;
  final String? jamTutup;

  MitraDataEntity({
    this.namaToko,
    this.deskripsiToko,
    this.alamat,
    this.hariBuka,
    this.jamBuka,
    this.jamTutup,
  });
}
