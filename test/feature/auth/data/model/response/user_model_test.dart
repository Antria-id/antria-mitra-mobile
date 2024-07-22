import 'dart:convert';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/user_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fixture/fixture.dart';

void main() {
  UserModel userModel = const UserModel(
    sub: 7,
    username: "Furuhan",
    role: "karyawan",
    mitraId: 2,
    picture: "09ff6cde-eaf8-4a4b-9933-f55aeb4361dd.jpg",
    email: "test123@gmail.yt",
    isOwner: false,
    iat: 1720319728,
    exp: 1720406128,
  );
  group(
    'json serialization ',
    () {
      test(
        'fromJson should return LoginResponseModel object ',
        () {
          //arrange
          final jsonData = fixture('user_model_response.json');
          //act
          final userModelJson = UserModel.fromJson(jsonDecode(jsonData));
          // assert
          expect(userModelJson, userModel);
        },
      );
      test(
        'toJson should return json string ',
        () {
          //act
          final jsonData = userModel.toJson();
          // assert
          final response = {
            "sub": 7,
            "username": "Furuhan",
            "role": "karyawan",
            "mitraId": 2,
            "picture": "09ff6cde-eaf8-4a4b-9933-f55aeb4361dd.jpg",
            "email": "test123@gmail.yt",
            "isOwner": false,
            "iat": 1720319728,
            "exp": 1720406128
          };
          expect(response, jsonData);
        },
      );
    },
  );
}
