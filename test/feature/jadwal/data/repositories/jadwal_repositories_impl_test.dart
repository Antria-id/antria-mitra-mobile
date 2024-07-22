import 'dart:convert';

import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/data/datasources/jadwal_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/data/models/request/mitra_request_model.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/data/models/response/mitra_model.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/data/repositories/jadwal_repository_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixture/fixture.dart';

// Mock class
class MockJadwalRemoteDatasource extends Mock
    implements JadwalRemoteDatasource {}

void main() {
  late JadwalRepositoryImpl jadwalRepository;
  late MockJadwalRemoteDatasource mockJadwalRemoteDatasource;

  setUpAll(() {
    mockJadwalRemoteDatasource = MockJadwalRemoteDatasource();
    jadwalRepository = JadwalRepositoryImpl();
    serviceLocator.registerFactory<JadwalRemoteDatasource>(
        () => mockJadwalRemoteDatasource);
  });

  tearDown(() {
    reset(mockJadwalRemoteDatasource);
  });

  final MitraModel mitraModel = MitraModel.fromJson(
    jsonDecode(fixture('mitra_model.json')),
  );

  final MitraRequestModel mitraRequestModel = MitraRequestModel.fromJson(
    jsonDecode(fixture('edit_jadwal_request.json')),
  );

  group('JadwalRepositoryImpl', () {
    test('should return MitraModel when getJadwal is successful', () async {
      // Arrange
      when(() => mockJadwalRemoteDatasource.getJadwalMitra())
          .thenAnswer((_) async => Right(mitraModel));

      // Act
      final result = await jadwalRepository.getJadwal();

      // Assert
      expect(result, Right(mitraModel));
      verify(() => mockJadwalRemoteDatasource.getJadwalMitra()).called(1);
    });

    test('should return Failure when getJadwal fails', () async {
      // Arrange
      final failure = ParsingFailure('Error parsing');
      when(() => mockJadwalRemoteDatasource.getJadwalMitra())
          .thenAnswer((_) async => Left(failure));

      // Act
      final result = await jadwalRepository.getJadwal();

      // Assert
      expect(result, Left(failure));
      verify(() => mockJadwalRemoteDatasource.getJadwalMitra()).called(1);
    });

    test('should return MitraModel when updateJadwalMitra is successful',
        () async {
      // Arrange
      when(() => mockJadwalRemoteDatasource.updateJadwalMitra(
              requestModel: mitraRequestModel))
          .thenAnswer((_) async => Right(mitraModel));

      // Act
      final result = await jadwalRepository.updateJadwalMitra(
          requestModel: mitraRequestModel);

      // Assert
      expect(result, Right(mitraModel));
      verify(() => mockJadwalRemoteDatasource.updateJadwalMitra(
          requestModel: mitraRequestModel)).called(1);
    });

    test('should return Failure when updateJadwalMitra fails', () async {
      // Arrange
      final failure = ParsingFailure('Error parsing');
      when(() => mockJadwalRemoteDatasource.updateJadwalMitra(
              requestModel: mitraRequestModel))
          .thenAnswer((_) async => Left(failure));

      // Act
      final result = await jadwalRepository.updateJadwalMitra(
          requestModel: mitraRequestModel);

      // Assert
      expect(result, Left(failure));
      verify(() => mockJadwalRemoteDatasource.updateJadwalMitra(
          requestModel: mitraRequestModel)).called(1);
    });
  });
}
