import 'dart:convert';
import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/core/services/user_cache_services.dart';
import 'package:antria_mitra_mobile/src/core/utils/request.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/user_model.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/datasources/profile_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/response/karyawan_model.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/response/ulasan_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../fixture/fixture.dart';

class MockRequest extends Mock implements Request {}

class MockUserServices extends Mock implements UserCacheService {}

void main() {
  late MockRequest mockRequest;
  late MockUserServices mockUserServices;
  late ProfileUserDatasource profileUserDatasource;

  setUpAll(() {
    mockRequest = MockRequest();
    mockUserServices = MockUserServices();
    serviceLocator.registerFactory<Request>(() => mockRequest);
    serviceLocator.registerFactory<UserCacheService>(() => mockUserServices);
    profileUserDatasource = ProfileUserDatasourceImpl();
  });

  tearDownAll(() async {
    await serviceLocator.reset(dispose: true);
  });

  group('Get User Profile', () {
    final karyawanJson = fixture('karyawan_response.json');
    final KaryawanModel karyawanModel =
        KaryawanModel.fromJson(jsonDecode(karyawanJson));

    test('should return KaryawanModel when the response is successful',
        () async {
      print('Fixture Data: $karyawanJson');
      when(() => mockUserServices.getUser())
          .thenAnswer((_) async => UserModel(sub: 5));
      when(() => mockRequest.get(any())).thenAnswer((_) async => Response(
            data: karyawanModel.toJson(),
            statusCode: 200,
            requestOptions: RequestOptions(
              baseUrl: '',
              path: '',
            ),
          ));

      final result = await profileUserDatasource.getKaryawan();
      print('API Call Result: $result');
      expect(result, Right(karyawanModel));
    });

    test(
      'should return connection failure when the response code is not 200',
      () async {
        const String message = 'Unable to connect';
        when(() => mockUserServices.getUser())
            .thenAnswer((_) async => UserModel(sub: 5));
        when(
          () => mockRequest.get(
            any(),
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

        final result = await profileUserDatasource.getKaryawan();

        expect(
          result,
          equals(Left(ConnectionFailure(message))),
        );
      },
    );

    test(
      'should return parsing failure if there is a parsing error',
      () async {
        // arrange
        when(() => mockUserServices.getUser())
            .thenAnswer((_) async => UserModel(mitraId: 1));
        when(
          () => mockRequest.get(
            any(),
          ),
        ).thenAnswer(
          (_) async => Response(
            statusCode: 200,
            data: {}, // Invalid data format
            requestOptions: RequestOptions(
              baseUrl: '',
              path: '',
            ),
          ),
        );

        // act
        final result = await profileUserDatasource.getKaryawan();

        // assert
        expect(
          result,
          equals(Left<ParsingFailure, KaryawanModel>(
            ParsingFailure('Unable to parse the response'),
          )),
        );
      },
    );

    test(
      'should return parsing failure if user not found',
      () async {
        // arrange
        when(() => mockUserServices.getUser()).thenAnswer((_) async => null);

        // act
        final result = await profileUserDatasource.getKaryawan();
        // assert
        expect(
          result,
          equals(const Left(ParsingFailure('User not found'))),
        );
      },
    );
  });

  group('Get Ulasan Pelanggan', () {
    test('should return UlasanModel when the response is successful', () async {
      final String jsonString = fixture('ulasan_response.json');
      final List<dynamic> jsonResponse = jsonDecode(jsonString);

      print('Fixture Data: $jsonString');

      // Mock the getUser method
      when(() => mockUserServices.getUser())
          .thenAnswer((_) async => UserModel(mitraId: 1));

      // Mock the get method for the API call
      when(() => mockRequest.get(any())).thenAnswer((_) async => Response(
            data: jsonResponse,
            statusCode: 200,
            requestOptions: RequestOptions(
              path: '',
            ),
          ));

      final result = await profileUserDatasource.getUlasan();

      print('API Call Result: $result');

      expect(result, isA<Right<Failure, List<UlasanResponse>>>());
    });

    test(
      'should return connection failure when the response code is not 200',
      () async {
        const String message = 'Unable to connect';
        when(() => mockUserServices.getUser())
            .thenAnswer((_) async => UserModel(mitraId: 1));
        when(
          () => mockRequest.get(
            any(),
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

        final result = await profileUserDatasource.getUlasan();

        expect(
          result,
          equals(Left(ConnectionFailure(message))),
        );
      },
    );

    test(
      'should return parsing failure if there is a parsing error',
      () async {
        // arrange
        when(() => mockUserServices.getUser())
            .thenAnswer((_) async => UserModel(mitraId: 1));
        when(
          () => mockRequest.get(
            any(),
          ),
        ).thenAnswer(
          (_) async => Response(
            statusCode: 200,
            data: {}, // Invalid data format
            requestOptions: RequestOptions(
              baseUrl: '',
              path: '',
            ),
          ),
        );

        // act
        final result = await profileUserDatasource.getUlasan();

        // assert
        expect(
          result,
          equals(Left<ParsingFailure, List<UlasanResponse>>(
            ParsingFailure('Invalid response format'),
          )),
        );
      },
    );

    test(
      'should return parsing failure if user not found',
      () async {
        // arrange
        when(() => mockUserServices.getUser()).thenAnswer((_) async => null);

        // act
        final result = await profileUserDatasource.getUlasan();
        // assert
        expect(
          result,
          equals(const Left(ParsingFailure('User not found'))),
        );
      },
    );
  });

  group('Get Informasi Usaha', () {
    test('should return  when the response is successful', () async {
      final String jsonString = fixture('ulasan_response.json');
      final List<dynamic> jsonResponse = jsonDecode(jsonString);

      print('Fixture Data: $jsonString');

      // Mock the getUser method
      when(() => mockUserServices.getUser())
          .thenAnswer((_) async => UserModel(mitraId: 1));

      // Mock the get method for the API call
      when(() => mockRequest.get(any())).thenAnswer((_) async => Response(
            data: jsonResponse,
            statusCode: 200,
            requestOptions: RequestOptions(
              path: '',
            ),
          ));

      final result = await profileUserDatasource.getUlasan();

      print('API Call Result: $result');

      expect(result, isA<Right<Failure, List<UlasanResponse>>>());
    });

    test(
      'should return connection failure when the response code is not 200',
      () async {
        const String message = 'Unable to connect';
        when(() => mockUserServices.getUser())
            .thenAnswer((_) async => UserModel(mitraId: 1));
        when(
          () => mockRequest.get(
            any(),
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

        final result = await profileUserDatasource.getUlasan();

        expect(
          result,
          equals(Left(ConnectionFailure(message))),
        );
      },
    );

    test(
      'should return parsing failure if there is a parsing error',
      () async {
        // arrange
        when(() => mockUserServices.getUser())
            .thenAnswer((_) async => UserModel(mitraId: 1));
        when(
          () => mockRequest.get(
            any(),
          ),
        ).thenAnswer(
          (_) async => Response(
            statusCode: 200,
            data: {}, // Invalid data format
            requestOptions: RequestOptions(
              baseUrl: '',
              path: '',
            ),
          ),
        );

        // act
        final result = await profileUserDatasource.getUlasan();

        // assert
        expect(
          result,
          equals(Left<ParsingFailure, List<UlasanResponse>>(
            ParsingFailure('Invalid response format'),
          )),
        );
      },
    );

    test(
      'should return parsing failure if user not found',
      () async {
        // arrange
        when(() => mockUserServices.getUser()).thenAnswer((_) async => null);

        // act
        final result = await profileUserDatasource.getUlasan();
        // assert
        expect(
          result,
          equals(const Left(ParsingFailure('User not found'))),
        );
      },
    );
  });
}
