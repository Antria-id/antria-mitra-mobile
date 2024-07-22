import 'dart:convert';
import 'package:antria_mitra_mobile/src/features/profile/data/models/request/update_karyawan_request_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../fixture/fixture.dart';

void main() {
  UpdateKaryawanRequestModel updateKaryawanRequestModel =
      UpdateKaryawanRequestModel(
    username: "hibikiverniy",
    profilePicture: "",
    email: "hibiki2@verni.yt",
    nama: "hibiki verniy",
    handphone: "123456789",
    alamat: "123 Main Street",
  );
  group(
    'json serialization ',
    () {
      test(
        'fromJson should return LoginRequestModel object ',
        () {
          //arrange
          final jsonData = fixture('edit_profile.json');
          //act
          final updateKaryawanJson =
              UpdateKaryawanRequestModel.fromJson(jsonDecode(jsonData));
          // assert
          expect(updateKaryawanRequestModel, updateKaryawanJson);
        },
      );
      test(
        'toJson should return json string ',
        () {
          //act
          final jsonData = updateKaryawanRequestModel.toJson();
          // assert
          final userRequest = {
            "username": "hibikiverniy",
            "email": "hibiki2@verni.yt",
            "profile_picture": "",
            "nama": "hibiki verniy",
            "handphone": "123456789",
            "alamat": "123 Main Street"
          };
          expect(userRequest, jsonData);
        },
      );
    },
  );
}
