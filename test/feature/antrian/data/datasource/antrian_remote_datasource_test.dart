import 'dart:convert';

import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/core/services/user_cache_services.dart';
import 'package:antria_mitra_mobile/src/core/utils/request.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/datasources/antrian_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/models/request/status_pesanan_request.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/models/response/antrian_response_model.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/models/response/pesanan_invoice_response.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/user_model.dart';
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
  late AntrianRemoteDatasource antrianRemoteDatasource;

  setUpAll(() {
    mockRequest = MockRequest();
    mockUserServices = MockUserServices();
    serviceLocator.registerFactory<Request>(() => mockRequest);
    serviceLocator.registerFactory<UserCacheService>(() => mockUserServices);
    antrianRemoteDatasource = AntrianRemoteDatasourceImpl();
  });

  tearDownAll(() async {
    await serviceLocator.reset(dispose: true);
  });

  group('Get Pesanan By Invoice', () {
    final String invoice = '1234';
    final pesananJson = fixture('detail_pesanan_invoice.json');
    final pesananModel =
        PesananInvoiceResponseModel.fromJson(jsonDecode(pesananJson));

    test('should return Mitra Model when the response is successful', () async {
      print('Fixture Data: $pesananModel');
      when(() => mockUserServices.getUser())
          .thenAnswer((_) async => UserModel(mitraId: 1));
      when(() => mockRequest.get(any())).thenAnswer((_) async => Response(
            data: pesananModel.toJson(),
            statusCode: 200,
            requestOptions: RequestOptions(baseUrl: '', path: ''),
          ));

      final result =
          await antrianRemoteDatasource.getPesananByInvoice(invoice: invoice);
      print('API Call Result: $result');
      expect(result, Right(pesananModel));
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

        final result =
            await antrianRemoteDatasource.getPesananByInvoice(invoice: invoice);

        expect(
          result,
          equals(Left(ConnectionFailure(message))),
        );
      },
    );

    test(
      'should return parsing failure if there is a parsing error',
      () async {
        when(() => mockUserServices.getUser())
            .thenAnswer((_) async => UserModel(mitraId: 1));
        when(() => mockRequest.get(any())).thenAnswer(
          (_) async => Response(
            statusCode: 200,
            data: {}, // Invalid data format
            requestOptions: RequestOptions(
              baseUrl: '',
              path: '',
            ),
          ),
        );

        final result =
            await antrianRemoteDatasource.getPesananByInvoice(invoice: invoice);
        expect(
          result,
          equals(const Left(ParsingFailure(
              'Unable to parse the response: type \'_Map<dynamic, dynamic>\' is not a subtype of type \'Map<String, dynamic>\''))),
        );
      },
    );

    test(
      'should return parsing failure if there is a parsing error',
      () async {
        when(() => mockUserServices.getUser())
            .thenAnswer((_) async => UserModel(mitraId: 1));
        when(() => mockRequest.get(any())).thenAnswer(
          (_) async => Response(
            statusCode: 200,
            data: {}, // Invalid data format
            requestOptions: RequestOptions(
              baseUrl: '',
              path: '',
            ),
          ),
        );

        final result =
            await antrianRemoteDatasource.getPesananByInvoice(invoice: invoice);
        expect(
          result,
          equals(const Left(ParsingFailure(
              'Unable to parse the response: type \'_Map<dynamic, dynamic>\' is not a subtype of type \'Map<String, dynamic>\''))),
        );
      },
    );
  });
  group('Update Order Status', () {
    final antrianJson = fixture('antrian_response.json');
    final antrianModel = AntrianResponseModel.fromJson(jsonDecode(antrianJson));
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
          data: antrianModel.toJson(),
          requestOptions: RequestOptions(baseUrl: '', path: ''),
        ),
      );

      final result = await antrianRemoteDatasource.updateStatusPesanan(
          id: 1,
          statusPesananRequestModel: StatusPesananRequestModel(
            orderstatus: "WAITING",
          ));

      expect(result, Right(antrianModel));
    });
  });
}
