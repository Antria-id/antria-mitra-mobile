import 'dart:convert';

import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/core/services/user_cache_services.dart';
import 'package:antria_mitra_mobile/src/core/utils/request.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/user_model.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/data/datasources/jadwal_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/data/models/request/mitra_request_model.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/data/models/response/mitra_model.dart';
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
  late JadwalRemoteDatasource jadwalRemoteDatasource;

  setUpAll(() {
    mockRequest = MockRequest();
    mockUserServices = MockUserServices();
    serviceLocator.registerFactory<Request>(() => mockRequest);
    serviceLocator.registerFactory<UserCacheService>(() => mockUserServices);
    jadwalRemoteDatasource = JadwalRemoteDatasourceImpl();
  });

  tearDownAll(() async {
    await serviceLocator.reset(dispose: true);
  });

  group('Get Jadwal', () {
    final mitraJson = fixture('mitra_model.json');
    final mitraModel = MitraModel.fromJson(jsonDecode(mitraJson));

    test('should return Mitra Model when the response is successful', () async {
      print('Fixture Data: $mitraJson');
      when(() => mockUserServices.getUser())
          .thenAnswer((_) async => UserModel(mitraId: 1));
      when(() => mockRequest.get(any())).thenAnswer((_) async => Response(
            data: mitraModel.toJson(),
            statusCode: 200,
            requestOptions: RequestOptions(baseUrl: '', path: ''),
          ));

      final result = await jadwalRemoteDatasource.getJadwalMitra();
      print('API Call Result: $result');
      expect(result, Right(mitraModel));
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

        final response = await jadwalRemoteDatasource.getJadwalMitra();

        expect(
          response,
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
        final response = await jadwalRemoteDatasource.getJadwalMitra();
        // assert
        expect(
          response,
          equals(const Left(ParsingFailure('Unable to parse the response'))),
        );
      },
    );

    test(
      'should return parsing failure if user not found',
      () async {
        // arrange
        when(() => mockUserServices.getUser()).thenAnswer((_) async => null);

        // act
        final response = await jadwalRemoteDatasource.getJadwalMitra();
        // assert
        expect(
          response,
          equals(const Left(ParsingFailure('User not found'))),
        );
      },
    );
  });

  group('Update Jadwal', () {
    final mitraJson = fixture('mitra_model.json');
    final mitraModel = MitraModel.fromJson(jsonDecode(mitraJson));
    test(
        'should return Mitra Model Response when the update jadwal is successful',
        () async {
      when(() => mockUserServices.getUser())
          .thenAnswer((_) async => UserModel(mitraId: 1));
      when(
        () => mockRequest.put(
          any(),
          data: any(named: 'data'),
        ),
      ).thenAnswer(
        (_) async => Response(
          statusCode: 200,
          data: mitraModel.toJson(),
          requestOptions: RequestOptions(baseUrl: '', path: ''),
        ),
      );

      final result = await jadwalRemoteDatasource.updateJadwalMitra(
        requestModel: MitraRequestModel.fromJson({
          "hari_buka": "rabu,kamis,jumat",
          "jam_buka": "10:00",
          "jam_tutup": "10:00"
        }),
      );

      expect(result, Right(mitraModel));
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

        final response = await jadwalRemoteDatasource.getJadwalMitra();

        expect(
          response,
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
        final response = await jadwalRemoteDatasource.getJadwalMitra();
        // assert
        expect(
          response,
          equals(const Left(ParsingFailure('Unable to parse the response'))),
        );
      },
    );

    test(
      'should return parsing failure if user not found',
      () async {
        // arrange
        when(() => mockUserServices.getUser()).thenAnswer((_) async => null);

        // act
        final response = await jadwalRemoteDatasource.getJadwalMitra();
        // assert
        expect(
          response,
          equals(const Left(ParsingFailure('User not found'))),
        );
      },
    );
  });
}
