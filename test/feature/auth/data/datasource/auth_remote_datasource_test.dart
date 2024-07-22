import 'dart:convert';
import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/core/services/user_cache_services.dart';
import 'package:antria_mitra_mobile/src/core/utils/request.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/request/login_request_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/request/register_request_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/login_reponse_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/register_reponse_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../fixture/fixture.dart';

class MockRequest extends Mock implements Request {}

class MockUserServices extends Mock implements UserCacheService {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late MockRequest mockRequest;
  late MockUserServices mockUserServices;
  late AuthRemoteDatasource authRemoteDatasource;

  setUpAll(
    () {
      mockRequest = MockRequest();
      mockUserServices = MockUserServices();
      serviceLocator.registerFactory<Request>(() => mockRequest);
      serviceLocator.registerFactory<UserCacheService>(() => mockUserServices);
      authRemoteDatasource = AuthRemoteDatasourceImpl();
    },
  );

  tearDownAll(() async {
    await serviceLocator.reset(dispose: true);
  });

  // Login
  final LoginResponse loginResponse = LoginResponse.fromJson(
    jsonDecode(
      fixture('accessToken_response.json'),
    ),
  );

  test('Mengembalikan response access token ketika berhasil login', () async {
    when(
      () => mockRequest.post(
        any(),
        data: any(named: 'data'),
      ),
    ).thenAnswer(
      (_) async => Response(
        statusCode: 200,
        data: loginResponse.toJson(),
        requestOptions: RequestOptions(baseUrl: '', path: ''),
      ),
    );
    when(
      () => mockUserServices.saveAccessToken(
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjYsInVzZXJuYW1lIjoidmVybml5aGliaWtpIiwicm9sZSI6Imthcnlhd2FuIiwibWl0cmFJZCI6MiwiaWF0IjoxNzE1MDY5MTM2LCJleHAiOjE3MTUxNTU1MzZ9.uIRBe2PTnOv-XFsRS-n6x17LSGc5KD1KgkUuzgbZa9c',
      ),
    ).thenAnswer((_) async => Future<void>.value());
    when(
      () => mockUserServices.setToken(
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjYsInVzZXJuYW1lIjoidmVybml5aGliaWtpIiwicm9sZSI6Imthcnlhd2FuIiwibWl0cmFJZCI6MiwiaWF0IjoxNzE1MDY5MTM2LCJleHAiOjE3MTUxNTU1MzZ9.uIRBe2PTnOv-XFsRS-n6x17LSGc5KD1KgkUuzgbZa9c',
      ),
    ).thenAnswer((_) async => Future<void>.value());

    final result = await authRemoteDatasource.loginUser(
      requestUser: LoginRequest.fromJson(const {
        "username": "verniyhibiki",
        "password": "verniy11223344",
      }),
    );

    expect(result, Right(loginResponse));
  });

  test('Mengembalikan message connection failure ketika gagal login', () async {
    const String message = 'Unable to connect';
    when(
      () => mockRequest.post(
        any(),
        data: any(named: 'data'),
      ),
    ).thenAnswer(
      (_) async => Response(
        statusCode: 400,
        data: {'message': message},
        requestOptions: RequestOptions(
          baseUrl: '',
          path: '',
        ),
      ),
    );

    final result = await authRemoteDatasource.loginUser(
        requestUser: LoginRequest.fromJson(const {}));
    expect(
      result,
      const Left(
        ConnectionFailure(message),
      ),
    );
  });

  // Register
  final RegisterResponse response = RegisterResponse.fromJson(
    jsonDecode(
      fixture('register_response.json'),
    ),
  );

  test('Mengembalikan response register model', () async {
    when(
      () => mockRequest.post(
        any(),
        data: any(named: 'data'),
      ),
    ).thenAnswer(
      (_) async => Response(
        statusCode: 201,
        data: response.toJson(),
        requestOptions: RequestOptions(baseUrl: '', path: ''),
      ),
    );
    final result = await authRemoteDatasource.registerUser(
        requestUser: RegisterRequest.fromJson(const {}));
    expect(result, Right(response));
  });

  test('Mengembalikan message connection failure ketika gagal register',
      () async {
    const String message = 'Unable to connect';
    when(
      () => mockRequest.post(
        any(),
        data: any(named: 'data'),
      ),
    ).thenAnswer(
      (_) async => Response(
        statusCode: 400,
        data: {'message': message},
        requestOptions: RequestOptions(
          baseUrl: '',
          path: '',
        ),
      ),
    );

    final result = await authRemoteDatasource.registerUser(
        requestUser: RegisterRequest.fromJson(const {}));
    expect(
      result,
      const Left(
        ConnectionFailure(message),
      ),
    );
  });
}
