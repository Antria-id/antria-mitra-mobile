import 'dart:convert';

import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/datasources/profile_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/request/update_karyawan_request_model.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/response/karyawan_model.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/response/ulasan_response.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/response/usaha_response_model.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/repositories/profile_repository_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../fixture/fixture.dart';

// Mock class
class MockProfileUserDatasource extends Mock implements ProfileUserDatasource {}

void main() {
  late ProfileRepositoryImpl profileRepositoryImpl;
  late MockProfileUserDatasource mockProfileUserDatasource;

  setUpAll(() {
    mockProfileUserDatasource = MockProfileUserDatasource();
    serviceLocator.registerFactory<ProfileUserDatasource>(
        () => mockProfileUserDatasource);
    profileRepositoryImpl = ProfileRepositoryImpl();
  });

  tearDown(() {
    reset(mockProfileUserDatasource);
  });

  final karyawanModel =
      KaryawanModel.fromJson(jsonDecode(fixture('karyawan_response.json')));

  final List<UlasanResponse> ulasanResponseList =
      (jsonDecode(fixture('ulasan_response.json')) as List<dynamic>)
          .map((jsonItem) => UlasanResponse.fromJson(jsonItem))
          .toList();

  final UsahaResponseModel usahaResponseModel =
      UsahaResponseModel.fromJson(jsonDecode(fixture('update_usaha.json')));

  final UpdateKaryawanRequestModel updateKaryawanRequestModel =
      UpdateKaryawanRequestModel.fromJson(
          jsonDecode(fixture('edit_profile.json')));

  group('ProfileRepositoryImpl', () {
    test('should return KaryawanModel when getKaryawan is successful',
        () async {
      // Arrange
      when(() => mockProfileUserDatasource.getKaryawan())
          .thenAnswer((_) async => Right(karyawanModel));

      // Act
      final result = await profileRepositoryImpl.getKaryawan();

      // Assert
      expect(result, Right(karyawanModel));
      verify(() => mockProfileUserDatasource.getKaryawan()).called(1);
    });

    test('should return Failure when getKaryawan fails', () async {
      // Arrange
      final failure = ParsingFailure('Error');
      when(() => mockProfileUserDatasource.getKaryawan())
          .thenAnswer((_) async => Left(failure));

      // Act
      final result = await profileRepositoryImpl.getKaryawan();

      // Assert
      expect(result, Left(failure));
      verify(() => mockProfileUserDatasource.getKaryawan()).called(1);
    });

    test('should return KaryawanModel when updateProfileKaryawan is successful',
        () async {
      // Arrange
      when(() => mockProfileUserDatasource.updateProfileKaryawan(
              requestModel: updateKaryawanRequestModel))
          .thenAnswer((_) async => Right(karyawanModel));

      // Act
      final result = await profileRepositoryImpl.updateProfileKaryawan(
          requestModel: updateKaryawanRequestModel);

      // Assert
      expect(result, Right(karyawanModel));
      verify(() => mockProfileUserDatasource.updateProfileKaryawan(
          requestModel: updateKaryawanRequestModel)).called(1);
    });

    test('should return Failure when updateProfileKaryawan fails', () async {
      // Arrange
      final failure = ParsingFailure('Error');
      when(() => mockProfileUserDatasource.updateProfileKaryawan(
              requestModel: updateKaryawanRequestModel))
          .thenAnswer((_) async => Left(failure));

      // Act
      final result = await profileRepositoryImpl.updateProfileKaryawan(
          requestModel: updateKaryawanRequestModel);

      // Assert
      expect(result, Left(failure));
      verify(() => mockProfileUserDatasource.updateProfileKaryawan(
          requestModel: updateKaryawanRequestModel)).called(1);
    });

    test('should return List<UlasanResponse> when getUlasan is successful',
        () async {
      // Arrange
      when(() => mockProfileUserDatasource.getUlasan())
          .thenAnswer((_) async => Right(ulasanResponseList));

      // Act
      final result = await profileRepositoryImpl.getUlasan();

      // Assert
      expect(result, Right(ulasanResponseList));
      verify(() => mockProfileUserDatasource.getUlasan()).called(1);
    });

    test('should return Failure when getUlasan fails', () async {
      // Arrange
      final failure = ParsingFailure('Error');
      when(() => mockProfileUserDatasource.getUlasan())
          .thenAnswer((_) async => Left(failure));

      // Act
      final result = await profileRepositoryImpl.getUlasan();

      // Assert
      expect(result, Left(failure));
      verify(() => mockProfileUserDatasource.getUlasan()).called(1);
    });

    test(
        'should return UsahaResponseModel when getInformasiUsaha is successful',
        () async {
      // Arrange
      when(() => mockProfileUserDatasource.getInformasiUsaha())
          .thenAnswer((_) async => Right(usahaResponseModel));

      // Act
      final result = await profileRepositoryImpl.getInformasiUsaha();

      // Assert
      expect(result, Right(usahaResponseModel));
      verify(() => mockProfileUserDatasource.getInformasiUsaha()).called(1);
    });

    test('should return Failure when getInformasiUsaha fails', () async {
      // Arrange
      final failure = ParsingFailure('Error');
      when(() => mockProfileUserDatasource.getInformasiUsaha())
          .thenAnswer((_) async => Left(failure));

      // Act
      final result = await profileRepositoryImpl.getInformasiUsaha();

      // Assert
      expect(result, Left(failure));
      verify(() => mockProfileUserDatasource.getInformasiUsaha()).called(1);
    });
  });
}
