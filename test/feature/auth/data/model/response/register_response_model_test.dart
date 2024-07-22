import 'dart:convert';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/register_reponse_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fixture/fixture.dart';

void main() {
  RegisterResponse registerResponse = RegisterResponse(
    mitra: Mitra(
      id: 9,
      namaToko: "Sharp",
      deskripsiToko: "Toko Sharp",
      alamat: "Japan",
      gambarToko: "",
      hariBuka: "senin,selasa,rabu",
      jamBuka: "08:00",
      jamTutup: "22:00",
      createdAt: DateTime.parse("2024-05-08T06:26:41.440Z"),
      updatedAt: DateTime.parse("2024-05-08T06:26:41.440Z"),
    ),
    karyawan: Karyawan(
      id: 10,
      username: "sharp",
      password:
          "\$2b\$10\$7T1SmhYNwprjpMXCPjbdBuL2Ab/aLzgu1YGaWfPz2ek14J.7eO9oK",
      email: "sharp@verni.yt",
      profilePicture: "",
      nama: "sharp",
      handphone: "123456789",
      alamat: "123 Main Street",
      isOwner: true,
      mitraId: 9,
      createdAt: DateTime.parse("2024-05-08T06:26:41.445Z"),
      updatedAt: DateTime.parse("2024-05-08T06:26:41.445Z"),
    ),
  );
  group(
    'json serialization ',
    () {
      test(
        'fromJson should return LoginResponseModel object ',
        () {
          //arrange
          final jsonData = fixture('register_response.json');
          //act
          final registerResponseModel =
              RegisterResponse.fromJson(jsonDecode(jsonData));
          // assert
          expect(registerResponseModel, registerResponse);
        },
      );
      test(
        'toJson should return json string ',
        () {
          //act
          final jsonData = registerResponse.toJson();
          // assert
          final userRequest = {
            "mitra": {
              "id": 9,
              "nama_toko": "Sharp",
              "deskripsi_toko": "Toko Sharp",
              "alamat": "Japan",
              "hari_buka": "senin,selasa,rabu",
              "jam_buka": "08:00",
              "jam_tutup": "22:00",
              "gambar_toko": "",
              "created_at": "2024-05-08T06:26:41.440Z",
              "updated_at": "2024-05-08T06:26:41.440Z"
            },
            "karyawan": {
              "id": 10,
              "username": "sharp",
              "password":
                  "\$2b\$10\$7T1SmhYNwprjpMXCPjbdBuL2Ab/aLzgu1YGaWfPz2ek14J.7eO9oK",
              "email": "sharp@verni.yt",
              "profile_picture": "",
              "nama": "sharp",
              "handphone": "123456789",
              "alamat": "123 Main Street",
              "isOwner": true,
              "mitraId": 9,
              "created_at": "2024-05-08T06:26:41.445Z",
              "updated_at": "2024-05-08T06:26:41.445Z"
            }
          };
          expect(userRequest, jsonData);
        },
      );
    },
  );
}
