import 'dart:convert';

import 'package:antria_mitra_mobile/src/features/jadwal/data/models/request/mitra_request_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixture/fixture.dart';

void main() {
  MitraRequestModel mitraRequestModel = MitraRequestModel(
    hariBuka: "rabu,kamis,jumat",
    jamBuka: "10:00",
    jamTutup: "10:00",
    statusToko: "FULL",
  );
  group(
    'json serialization ',
    () {
      test(
        'fromJson should return LoginRequestModel object ',
        () {
          //arrange
          final jsonData = fixture('edit_jadwal_request.json');
          //act
          final mitraRequest = MitraRequestModel.fromJson(jsonDecode(jsonData));
          // assert
          expect(mitraRequestModel, mitraRequest);
        },
      );
      test(
        'toJson should return json string ',
        () {
          //act
          final jsonData = mitraRequestModel.toJson();
          // assert
          final mitraRequest = {
            "hari_buka": "rabu,kamis,jumat",
            "jam_buka": "10:00",
            "jam_tutup": "10:00",
            "status_toko": "FULL"
          };
          expect(mitraRequest, jsonData);
        },
      );
    },
  );
}
