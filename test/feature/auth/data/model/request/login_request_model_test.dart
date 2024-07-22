import 'dart:convert';

import 'package:antria_mitra_mobile/src/features/auth/data/models/request/login_request_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fixture/fixture.dart';

void main() {
  const LoginRequest loginRequest = LoginRequest(
    username: 'verniyhibiki',
    password: 'verniy11223344',
  );
  group(
    'json serialization ',
    () {
      test(
        'fromJson should return LoginRequestModel object ',
        () {
          //arrange
          final jsonData = fixture('login_request.json');
          //act
          final loginRequestModel = LoginRequest.fromJson(jsonDecode(jsonData));
          // assert
          expect(loginRequestModel, loginRequest);
        },
      );
      test(
        'toJson should return json string ',
        () {
          //act
          final jsonData = loginRequest.toJson();
          // assert
          final userRequest = {
            "username": "verniyhibiki",
            "password": "verniy11223344",
          };
          expect(userRequest, jsonData);
        },
      );
    },
  );
}
