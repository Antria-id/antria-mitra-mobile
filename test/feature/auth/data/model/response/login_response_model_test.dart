import 'dart:convert';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/login_reponse_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fixture/fixture.dart';

void main() {
  const LoginResponse loginResponse = LoginResponse(
      accessToken:
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjYsInVzZXJuYW1lIjoidmVybml5aGliaWtpIiwicm9sZSI6Imthcnlhd2FuIiwibWl0cmFJZCI6MiwiaWF0IjoxNzE1MDY5MTM2LCJleHAiOjE3MTUxNTU1MzZ9.uIRBe2PTnOv-XFsRS-n6x17LSGc5KD1KgkUuzgbZa9c");
  group(
    'json serialization ',
    () {
      test(
        'fromJson should return LoginResponseModel object ',
        () {
          //arrange
          final jsonData = fixture('accessToken_response.json');
          //act
          final loginResponseModel =
              LoginResponse.fromJson(jsonDecode(jsonData));
          // assert
          expect(loginResponseModel, loginResponse);
        },
      );
      test(
        'toJson should return json string ',
        () {
          //act
          final jsonData = loginResponse.toJson();
          // assert
          final accessToken = {
            "access_token":
                "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjYsInVzZXJuYW1lIjoidmVybml5aGliaWtpIiwicm9sZSI6Imthcnlhd2FuIiwibWl0cmFJZCI6MiwiaWF0IjoxNzE1MDY5MTM2LCJleHAiOjE3MTUxNTU1MzZ9.uIRBe2PTnOv-XFsRS-n6x17LSGc5KD1KgkUuzgbZa9c"
          };
          expect(accessToken, jsonData);
        },
      );
    },
  );
}
