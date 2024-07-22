import 'dart:convert';

import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/datasources/auth_local_datasources.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/request/login_request_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/request/register_request_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/login_reponse_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/register_reponse_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../fixture/fixture.dart';

class MockRemoteDataSource extends Mock implements AuthRemoteDatasourceImpl {}

class MockAuthLocalDatasource extends Mock implements AuthLocalDatasource {}

void main() {
  late MockAuthLocalDatasource mockAuthLocalDatasource;
  late MockRemoteDataSource mockRemoteDataSource;
  late AuthRepositoryImpl authRepositoryImpl;
  setUpAll(() {
    mockRemoteDataSource = MockRemoteDataSource();
    mockAuthLocalDatasource = MockAuthLocalDatasource();
    serviceLocator
        .registerFactory<AuthRemoteDatasource>(() => mockRemoteDataSource);
    serviceLocator
        .registerFactory<AuthLocalDatasource>(() => mockAuthLocalDatasource);
    authRepositoryImpl = AuthRepositoryImpl();
  });
  final LoginResponse user = LoginResponse.fromJson(jsonDecode(
    fixture('accessToken_response.json'),
  ));

  test(
    'should return AccessToken object on successful login',
    () async {
      //arrange
      when(() => mockRemoteDataSource.loginUser(
            requestUser: LoginRequest.fromJson(const {
              "username": "verniyhibiki",
              "password": "verniy11223344",
            }),
          )).thenAnswer(
        (_) async => Right(user),
      );
      // act
      final response = await authRepositoryImpl.login(
        requestUser: LoginRequest.fromJson(const {
          "username": "verniyhibiki",
          "password": "verniy11223344",
        }),
      );
      // assert
      expect(response, Right(user));
    },
  );
  test(
    'should return Failure object on login fail',
    () async {
      //arrange
      when(() => mockRemoteDataSource.loginUser(
            requestUser: LoginRequest.fromJson(const {
              "username": "verniyhibiki",
              "password": "verniy11223344",
            }),
          )).thenAnswer(
        (_) async => const Left(ConnectionFailure('')),
      );
      // act
      final response = await authRepositoryImpl.login(
        requestUser: LoginRequest.fromJson(const {
          "username": "verniyhibiki",
          "password": "verniy11223344",
        }),
      );
      // assert
      expect(response, const Left(ConnectionFailure('')));
    },
  );

  //Register
  final RegisterResponse registerResponse = RegisterResponse.fromJson(
    jsonDecode(
      fixture('register_response.json'),
    ),
  );
  test(
    'should return Register object on successful login',
    () async {
      //arrange
      when(
        () => mockRemoteDataSource.registerUser(
          requestUser: const RegisterRequest(
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
          ),
        ),
      ).thenAnswer(
        (_) async => Right(registerResponse),
      );
      // act
      final response = await authRepositoryImpl.register(
        requestUser: RegisterRequest.fromJson(
          const {
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
          },
        ),
      );
      // assert
      expect(response, Right(registerResponse));
    },
  );
  test(
    'should return Failure object on login fail',
    () async {
      //arrange
      when(() => mockRemoteDataSource.registerUser(
            requestUser: const RegisterRequest(
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
            ),
          )).thenAnswer(
        (_) async => const Left(ConnectionFailure('')),
      );
      // act
      final response = await authRepositoryImpl.register(
        requestUser: RegisterRequest.fromJson(
          const {
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
          },
        ),
      );
      // assert
      expect(response, const Left(ConnectionFailure('')));
    },
  );
  test(
    'should return Right when deletion from local storage is successful',
    () async {
      // Arrange
      when(() => mockAuthLocalDatasource.deleteUserFromLocalStorage())
          .thenAnswer((_) async => const Right(null));

      // Act
      final result = await authRepositoryImpl.deleteUserFromLocalStorage();

      // Assert
      expect(result, const Right(null));
      verify(() => mockAuthLocalDatasource.deleteUserFromLocalStorage())
          .called(1);
    },
  );

  test(
    'should return Left with Failure when deletion from local storage is unsuccessful',
    () async {
      // Arrange
      final tFailure = ParsingFailure('Failed Delete user');
      when(() => mockAuthLocalDatasource.deleteUserFromLocalStorage())
          .thenAnswer((_) async => Left(tFailure));

      // Act
      final result = await authRepositoryImpl.deleteUserFromLocalStorage();

      // Assert
      expect(result, Left(tFailure));
      verify(() => mockAuthLocalDatasource.deleteUserFromLocalStorage())
          .called(1);
    },
  );
}
