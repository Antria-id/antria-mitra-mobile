import 'dart:convert';

import 'package:antria_mitra_mobile/src/features/history_transaksi/domain/usecases/get_riwayat_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';
import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/data/datasources/riwayat_transaksi_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/data/models/riwayat_transaksi_response_model.dart';

import '../../../../fixture/fixture.dart';

class MockRiwayatTransaksiRemoteDatasource extends Mock
    implements RiwayatTransaksiRemoteDatasource {}

void main() {
  late GetRiwayatTransaksiUsecase usecase;
  late MockRiwayatTransaksiRemoteDatasource mockRemoteDatasource;

  setUp(() {
    // Clear previous registrations
    serviceLocator.reset();

    mockRemoteDatasource = MockRiwayatTransaksiRemoteDatasource();
    usecase = GetRiwayatTransaksiUsecase();
    serviceLocator.registerLazySingleton<RiwayatTransaksiRemoteDatasource>(
        () => mockRemoteDatasource);
  });

  final List<dynamic> jsonList =
      jsonDecode(fixture('list_riwayat_transaksi_response.json'));

  final List<RiwayatTransaksiResponse> transaksiResponseList = jsonList
      .map((jsonItem) => RiwayatTransaksiResponse.fromJson(jsonItem))
      .toList();

  test(
      'should return List<RiwayatTransaksiResponse> when the datasource call is successful',
      () async {
    // Arrange
    final expectedList = transaksiResponseList;
    when(() => mockRemoteDatasource.getRiwayatTransaksi())
        .thenAnswer((_) async => Right(expectedList));

    // Act
    final result = await usecase.getRiwayatTransaksi();

    // Assert
    expect(result, Right(expectedList));
    verify(() => mockRemoteDatasource.getRiwayatTransaksi()).called(1);
  });

  test('should return Failure when the datasource call fails', () async {
    // Arrange
    final failure = ParsingFailure('error parse');
    when(() => mockRemoteDatasource.getRiwayatTransaksi())
        .thenAnswer((_) async => Left(failure));

    // Act
    final result = await usecase.getRiwayatTransaksi();

    // Assert
    expect(result, Left(failure));
    verify(() => mockRemoteDatasource.getRiwayatTransaksi()).called(1);
  });
}
