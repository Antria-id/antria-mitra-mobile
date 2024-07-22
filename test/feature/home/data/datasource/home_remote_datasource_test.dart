import 'dart:convert';

import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/core/services/user_cache_services.dart';
import 'package:antria_mitra_mobile/src/core/utils/request.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/user_model.dart';
import 'package:antria_mitra_mobile/src/features/home/data/datasources/remote/home_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/home/data/models/pesanan_model.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/response/karyawan_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../fixture/fixture.dart';

class MockRequest extends Mock implements Request {}

class MockUserServices extends Mock implements UserCacheService {}

void main() {
  late MockRequest mockRequest;
  late MockUserServices mockUserServices;
  late HomeRemoteDatasource homeRemoteDatasource;

  setUpAll(() {
    mockRequest = MockRequest();
    mockUserServices = MockUserServices();
    serviceLocator.registerFactory<Request>(() => mockRequest);
    serviceLocator.registerFactory<UserCacheService>(() => mockUserServices);
    homeRemoteDatasource = HomeRemoteDatasourceImpl();
  });

  tearDownAll(() async {
    await serviceLocator.reset(dispose: true);
  });

  group('Get User', () {
    final karyawanJson = fixture('karyawan_response.json');
    final KaryawanModel karyawanModel =
        KaryawanModel.fromJson(jsonDecode(karyawanJson));

    test('should return Mitra Model when the response is successful', () async {
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

      final result = await homeRemoteDatasource.getUserInfo();
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

        final result = await homeRemoteDatasource.getUserInfo();

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
        final response = await homeRemoteDatasource.getUserInfo();

        // assert
        expect(
          response,
          equals(Left<ParsingFailure, KaryawanModel>(
            ParsingFailure(
                'Unable to parse the response: Null check operator used on a null value'),
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
        final result = await homeRemoteDatasource.getUserInfo();
        // assert
        expect(
          result,
          equals(const Left(ParsingFailure('User not found'))),
        );
      },
    );
  });
  group('Get Pesanan Mitra', () {
    test('should return PesananModel when the response is successful',
        () async {
      final String jsonString = fixture('pesanan_model.json');
      final List<dynamic> jsonResponse = jsonDecode(jsonString);

      print('Fixture Data: $jsonString');

      // Mock the getUser method
      when(() => mockUserServices.getUser())
          .thenAnswer((_) async => UserModel(mitraId: 2));

      // Mock the get method for the API call
      when(() => mockRequest.get(any())).thenAnswer((_) async => Response(
            data: jsonResponse,
            statusCode: 200,
            requestOptions: RequestOptions(
              path: '',
            ),
          ));

      final result = await homeRemoteDatasource.getPesananMitra();

      print('API Call Result: $result');

      expect(result, isA<Right<Failure, List<PesananModel>>>());
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

        final result = await homeRemoteDatasource.getPesananMitra();

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
        final result = await homeRemoteDatasource.getPesananMitra();

        // assert
        expect(
          result,
          equals(Left<ParsingFailure, List<PesananModel>>(
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
        final result = await homeRemoteDatasource.getPesananMitra();
        // assert
        expect(
          result,
          equals(const Left(ParsingFailure('User not found'))),
        );
      },
    );
  });
}
