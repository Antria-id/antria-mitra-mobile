import 'dart:convert';

import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/data/models/request/mitra_request_model.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/data/models/response/mitra_model.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/domain/repositories/jadwal_repository.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/domain/usecases/update_jadwal_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixture/fixture.dart';

// Mock class
class MockJadwalRepository extends Mock implements JadwalRepository {}

void main() {
  late UpdateJadwalUsecase updateJadwalUsecase;
  late MockJadwalRepository mockJadwalRepository;

  setUp(() {
    mockJadwalRepository = MockJadwalRepository();
    updateJadwalUsecase = UpdateJadwalUsecase();
    serviceLocator
        .registerFactory<JadwalRepository>(() => mockJadwalRepository);
  });

  tearDown(() {
    serviceLocator.reset();
  });

  final MitraModel mitraModel = MitraModel.fromJson(
    jsonDecode(fixture('mitra_model.json')),
  );

  final MitraRequestModel mitraRequestModel = MitraRequestModel.fromJson(
    jsonDecode(fixture('edit_jadwal_request.json')),
  );

  group('UpdateJadwalUsecase', () {
    test('should return MitraModel when updateJadwal is successful', () async {
      // Arrange
      when(() => mockJadwalRepository.updateJadwalMitra(
              requestModel: mitraRequestModel))
          .thenAnswer((_) async => Right(mitraModel));

      // Act
      final result = await updateJadwalUsecase.updateJadwal(mitraRequestModel);

      // Assert
      expect(result, Right(mitraModel));
      verify(() => mockJadwalRepository.updateJadwalMitra(
          requestModel: mitraRequestModel)).called(1);
    });

    test('should return Failure when updateJadwal fails', () async {
      // Arrange
      final failure = ParsingFailure('Error updating');
      when(() => mockJadwalRepository.updateJadwalMitra(
              requestModel: mitraRequestModel))
          .thenAnswer((_) async => Left(failure));

      // Act
      final result = await updateJadwalUsecase.updateJadwal(mitraRequestModel);

      // Assert
      expect(result, Left(failure));
      verify(() => mockJadwalRepository.updateJadwalMitra(
          requestModel: mitraRequestModel)).called(1);
    });
  });
}
