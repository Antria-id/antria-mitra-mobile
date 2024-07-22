import 'dart:convert';

import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/data/models/response/mitra_model.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/domain/repositories/jadwal_repository.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/domain/usecases/get_jadwal_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixture/fixture.dart';

// Mock class
class MockJadwalRepository extends Mock implements JadwalRepository {}

void main() {
  late GetJadwalUsecase getJadwalUsecase;
  late MockJadwalRepository mockJadwalRepository;

  setUp(() {
    mockJadwalRepository = MockJadwalRepository();
    getJadwalUsecase = GetJadwalUsecase();
    serviceLocator
        .registerFactory<JadwalRepository>(() => mockJadwalRepository);
  });

  tearDown(() {
    serviceLocator.reset();
  });

  final MitraModel mitraModel = MitraModel.fromJson(
    jsonDecode(fixture('mitra_model.json')),
  );

  group('GetJadwalUsecase', () {
    test('should return MitraModel when getJadwal is successful', () async {
      // Arrange
      when(() => mockJadwalRepository.getJadwal())
          .thenAnswer((_) async => Right(mitraModel));

      // Act
      final result = await getJadwalUsecase.getJadwal();

      // Assert
      expect(result, Right(mitraModel));
      verify(() => mockJadwalRepository.getJadwal()).called(1);
    });

    test('should return Failure when getJadwal fails', () async {
      // Arrange
      final failure = ParsingFailure('Error parse');
      when(() => mockJadwalRepository.getJadwal())
          .thenAnswer((_) async => Left(failure));

      // Act
      final result = await getJadwalUsecase.getJadwal();

      // Assert
      expect(result, Left(failure));
      verify(() => mockJadwalRepository.getJadwal()).called(1);
    });
  });
}
