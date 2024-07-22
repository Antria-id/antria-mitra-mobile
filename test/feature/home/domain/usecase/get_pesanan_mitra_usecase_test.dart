import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/home/data/datasources/remote/home_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/home/data/models/pesanan_model.dart';
import 'package:antria_mitra_mobile/src/features/home/domain/usecases/get_pesanan_mitra_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockHomeRemoteDatasource extends Mock implements HomeRemoteDatasource {}

void main() {
  late GetPesananMitraUsecase getPesananMitraUsecase;
  late MockHomeRemoteDatasource mockHomeRemoteDatasource;

  setUp(() {
    mockHomeRemoteDatasource = MockHomeRemoteDatasource();
    getPesananMitraUsecase = GetPesananMitraUsecase();

    serviceLocator
        .registerSingleton<HomeRemoteDatasource>(mockHomeRemoteDatasource);
  });

  tearDown(() {
    serviceLocator.reset();
  });

  test(
      'should return a list of PesananModel when the call to datasource is successful',
      () async {
    // Arrange
    final tPesananModels = [
      PesananModel(
        invoice: 'INVCMI2RO21721497626',
        pelangganId: 2,
        mitraId: 2,
        createdAt: DateTime.parse("2024-07-20T17:47:15.769Z"),
        updatedAt: DateTime.parse("2024-07-20T17:47:15.789Z"),
        antrian: Antrian(
          id: 196,
          orderstatus: 'WAITING',
          pesananId: 'INVCMI2RO21721497626',
          createdAt: DateTime.parse("2024-07-20T17:47:15.785Z"),
          updatedAt: DateTime.parse("2024-07-20T17:47:15.785Z"),
        ),
      ),
      PesananModel(
        invoice: 'INVCMI2RO21721497626',
        pelangganId: 2,
        mitraId: 2,
        createdAt: DateTime.parse("2024-07-20T17:47:15.769Z"),
        updatedAt: DateTime.parse("2024-07-20T17:47:15.789Z"),
        antrian: Antrian(
          id: 196,
          orderstatus: 'WAITING',
          pesananId: 'INVCMI2RO21721497626',
          createdAt: DateTime.parse("2024-07-20T17:47:15.785Z"),
          updatedAt: DateTime.parse("2024-07-20T17:47:15.785Z"),
        ),
      ),
    ];
    when(() => mockHomeRemoteDatasource.getPesananMitra())
        .thenAnswer((_) async => Right(tPesananModels));

    // Act
    final result = await getPesananMitraUsecase.getPesananMitra();

    // Assert
    expect(result, Right(tPesananModels));
    verify(() => mockHomeRemoteDatasource.getPesananMitra()).called(1);
  });

  test('should return a Failure when the call to datasource is unsuccessful',
      () async {
    // Arrange
    final tFailure = ParsingFailure('Error Parse API');
    when(() => mockHomeRemoteDatasource.getPesananMitra())
        .thenAnswer((_) async => Left(tFailure));

    // Act
    final result = await getPesananMitraUsecase.getPesananMitra();

    // Assert
    expect(result, Left(tFailure));
    verify(() => mockHomeRemoteDatasource.getPesananMitra()).called(1);
  });
}
