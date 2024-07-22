import 'dart:convert';

import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/data/datasources/riwayat_transaksi_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/data/models/detail_transaksi_model.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/data/models/riwayat_transaksi_response_model.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/data/repositories/riwayat_transaksi_repository_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../fixture/fixture.dart';

class MockRiwayatTransaksiRemoteDatasource extends Mock
    implements RiwayatTransaksiRemoteDatasource {}

void main() {
  late RiwayatTransaksiRepositoryImpl riwayatTransaksiRepositoryImpl;
  late MockRiwayatTransaksiRemoteDatasource mockDatasource;

  setUpAll(() {
    mockDatasource = MockRiwayatTransaksiRemoteDatasource();
    serviceLocator.registerFactory<RiwayatTransaksiRemoteDatasource>(
        () => mockDatasource);
    riwayatTransaksiRepositoryImpl = RiwayatTransaksiRepositoryImpl();
  });

  tearDown(() {
    reset(mockDatasource);
  });

  final List<dynamic> jsonList =
      jsonDecode(fixture('list_riwayat_transaksi_response.json'));

  final List<RiwayatTransaksiResponse> transaksiResponseList = jsonList
      .map((jsonItem) => RiwayatTransaksiResponse.fromJson(jsonItem))
      .toList();

  final DetailTransaksiModel detailTransaksiModel =
      DetailTransaksiModel.fromJson(
          jsonDecode(fixture('detail_transaksi.json')));

  group('getRiwayatTransaksi', () {
    test(
        'should return list of RiwayatTransaksiResponse when call to datasource is successful',
        () async {
      // arrange
      when(() => mockDatasource.getRiwayatTransaksi())
          .thenAnswer((_) async => Right(transaksiResponseList));

      // act
      final result = await riwayatTransaksiRepositoryImpl.getRiwayatTransaksi();

      // assert
      verify(() => mockDatasource.getRiwayatTransaksi()).called(1);
      expect(result, equals(Right(transaksiResponseList)));
    });

    test('should return Failure when call to datasource is unsuccessful',
        () async {
      // arrange
      when(() => mockDatasource.getRiwayatTransaksi())
          .thenAnswer((_) async => Left(ParsingFailure("Error fetch data")));

      // act
      final result = await riwayatTransaksiRepositoryImpl.getRiwayatTransaksi();

      // assert
      verify(() => mockDatasource.getRiwayatTransaksi()).called(1);
      expect(result, equals(Left(ParsingFailure("Error fetch data"))));
    });
  });

  group('getDetailTransaksi', () {
    test(
        'should return DetailTransaksiModel when call to datasource is successful',
        () async {
      // arrange
      when(() => mockDatasource.getDetailTransaksi(invoice: 'INVC1716358907'))
          .thenAnswer((_) async => Right(detailTransaksiModel));

      // act
      final result = await riwayatTransaksiRepositoryImpl.getDetailTransaksi(
          invoice: 'INVC1716358907');

      // assert
      verify(() => mockDatasource.getDetailTransaksi(invoice: 'INVC1716358907'))
          .called(1);
      expect(result, equals(Right(detailTransaksiModel)));
    });

    test('should return Failure when call to datasource is unsuccessful',
        () async {
      // arrange
      when(() => mockDatasource.getDetailTransaksi(invoice: 'INVC1716358907'))
          .thenAnswer((_) async => Left(ParsingFailure("Error fetch data")));

      // act
      final result = await riwayatTransaksiRepositoryImpl.getDetailTransaksi(
          invoice: 'INVC1716358907');

      // assert
      verify(() => mockDatasource.getDetailTransaksi(invoice: 'INVC1716358907'))
          .called(1);
      expect(result, equals(Left(ParsingFailure("Error fetch data"))));
    });
  });
}
