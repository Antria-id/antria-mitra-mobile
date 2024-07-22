import 'dart:convert';

import 'package:antria_mitra_mobile/src/features/jadwal/data/models/response/mitra_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixture/fixture.dart';

void main() {
  MitraModel mitraModel = MitraModel(
    review: 44,
    id: 1,
    namaToko: "arch",
    deskripsiToko: "abc",
    alamat: "kotabaru",
    linkGmaps: "",
    hariBuka: "rabu,kamis,jumat",
    jamBuka: "10:00",
    jamTutup: "12:00",
    gambarToko: "8548e275-e063-4bc9-949c-68a284d06050.jpg",
    subscription: false,
    statusToko: "CLOSE",
    createdAt: DateTime.parse("2024-05-02T18:19:01.923Z"),
    updatedAt: DateTime.parse("2024-06-04T14:56:53.402Z"),
  );

  group(
    'json serialization ',
    () {
      test(
        'fromJson should return MitraModel object ',
        () {
          //arrange
          final jsonData = fixture('mitra_model.json');
          //act
          final mitraResponseModel = MitraModel.fromJson(jsonDecode(jsonData));
          // assert
          expect(mitraModel, mitraResponseModel);
        },
      );
      test(
        'toJson should return json string ',
        () {
          //act
          final jsonData = mitraModel.toJson();
          // assert
          final mitraResponse = {
            "review": 44,
            "id": 1,
            "nama_toko": "arch",
            "deskripsi_toko": "abc",
            "alamat": "kotabaru",
            "linkGmaps": "",
            "hari_buka": "rabu,kamis,jumat",
            "jam_buka": "10:00",
            "jam_tutup": "12:00",
            "gambar_toko": "8548e275-e063-4bc9-949c-68a284d06050.jpg",
            "subscription": false,
            "status_toko": "CLOSE",
            "created_at": "2024-05-02T18:19:01.923Z",
            "updated_at": "2024-06-04T14:56:53.402Z"
          };
          expect(mitraResponse, jsonData);
        },
      );
    },
  );
}
