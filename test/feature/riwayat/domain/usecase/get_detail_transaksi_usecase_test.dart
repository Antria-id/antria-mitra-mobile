import 'dart:convert';

import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';
import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/data/datasources/riwayat_transaksi_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/data/models/detail_transaksi_model.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/domain/usecases/get_detail_transaksi_usecase.dart';

import '../../../../fixture/fixture.dart';

// Mock class for RiwayatTransaksiRemoteDatasource
class MockRiwayatTransaksiRemoteDatasource extends Mock
    implements RiwayatTransaksiRemoteDatasource {}

void main() {
  late GetDetailTransaksiUsecase usecase;
  late MockRiwayatTransaksiRemoteDatasource mockRemoteDatasource;

  setUp(() {
    // Clear previous registrations
    serviceLocator.reset();

    mockRemoteDatasource = MockRiwayatTransaksiRemoteDatasource();
    usecase = GetDetailTransaksiUsecase();
    serviceLocator.registerLazySingleton<RiwayatTransaksiRemoteDatasource>(
        () => mockRemoteDatasource);
  });

  final DetailTransaksiModel detailTransaksiModel =
      DetailTransaksiModel.fromJson(
          jsonDecode(fixture('detail_transaksi.json')));

  test(
      'should return DetailTransaksiModel when the datasource call is successful',
      () async {
    // Arrange
    const invoice = 'invoice123';
    final expectedModel = detailTransaksiModel;
    when(() => mockRemoteDatasource.getDetailTransaksi(invoice: invoice))
        .thenAnswer((_) async => Right(expectedModel));

    // Act
    final result = await usecase.getDetailTransaksi(invoice: invoice);

    // Assert
    expect(result, Right(expectedModel));
    verify(() => mockRemoteDatasource.getDetailTransaksi(invoice: invoice))
        .called(1);
  });

  test('should return Failure when the datasource call fails', () async {
    // Arrange
    const invoice = 'invoice123';
    final failure = ParsingFailure('error parse');
    when(() => mockRemoteDatasource.getDetailTransaksi(invoice: invoice))
        .thenAnswer((_) async => Left(failure));

    // Act
    final result = await usecase.getDetailTransaksi(invoice: invoice);

    // Assert
    expect(result, Left(failure));
    verify(() => mockRemoteDatasource.getDetailTransaksi(invoice: invoice))
        .called(1);
  });
}
