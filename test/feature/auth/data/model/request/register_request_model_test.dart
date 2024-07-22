import 'dart:convert';
import 'package:antria_mitra_mobile/src/features/auth/data/models/request/register_request_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fixture/fixture.dart';

void main() {
  RegisterRequest registerRequest = const RegisterRequest(
    mitraData: MitraData(
      namaToko: "Sharp",
      deskripsiToko: "Toko Sharp",
      alamat: "Japan",
      hariBuka: "senin,selasa,rabu",
      jamBuka: "08:00",
      jamTutup: "22:00",
    ),
    karyawanData: KaryawanData(
      username: "sharp",
      password: "sharp11223344",
      email: "sharp@verni.yt",
      profilePicture: "",
      nama: "sharp",
      handphone: "123456789",
      alamat: "123 Main Street",
      isOwner: true,
    ),
  );

  group(
    'json serialization ',
    () {
      test(
        'fromJson should return RegisterRequestModel object ',
        () {
          //arrange
          final jsonData = fixture('register_request.json');
          //act
          final registerRequestModel =
              RegisterRequest.fromJson(jsonDecode(jsonData));
          // assert
          expect(registerRequestModel, registerRequest);
        },
      );
      test(
        'toJson should return json string ',
        () {
          //act
          final jsonData = registerRequest.toJson();
          // assert
          final userRequest = {
            "mitraData": {
              "nama_toko": "Sharp",
              "deskripsi_toko": "Toko Sharp",
              "alamat": "Japan",
              "hari_buka": "senin,selasa,rabu",
              "jam_buka": "08:00",
              "jam_tutup": "22:00"
            },
            "karyawanData": {
              "username": "sharp",
              "password": "sharp11223344",
              "email": "sharp@verni.yt",
              "profile_picture": "",
              "nama": "sharp",
              "handphone": "123456789",
              "alamat": "123 Main Street",
              "isOwner": true
            }
          };
          expect(userRequest, jsonData);
        },
      );
    },
  );
}
