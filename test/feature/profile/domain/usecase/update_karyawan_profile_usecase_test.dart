import 'dart:convert';

import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/request/update_karyawan_request_model.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/response/karyawan_model.dart';
import 'package:antria_mitra_mobile/src/features/profile/domain/repositories/profile_repository.dart';
import 'package:antria_mitra_mobile/src/features/profile/domain/usecases/update_karyawan_profile_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixture/fixture.dart';

// Mock class for ProfileRepository
class MockProfileRepository extends Mock implements ProfileRepository {}

void main() {
  late UpdateKaryawanProfileUsecase usecase;
  late MockProfileRepository mockProfileRepository;

  setUpAll(() {
    mockProfileRepository = MockProfileRepository();
    serviceLocator
        .registerFactory<ProfileRepository>(() => mockProfileRepository);
    usecase = UpdateKaryawanProfileUsecase();
  });

  final UpdateKaryawanRequestModel updateKaryawanRequestModel =
      UpdateKaryawanRequestModel.fromJson(
          jsonDecode(fixture('edit_profile.json')));

  final karyawanModel =
      KaryawanModel.fromJson(jsonDecode(fixture('karyawan_response.json')));
  test('should return KaryawanModel when updateProfileKaryawan is successful',
      () async {
    // Arrange
    when(() => mockProfileRepository.updateProfileKaryawan(
            requestModel: updateKaryawanRequestModel))
        .thenAnswer((_) async => Right(karyawanModel));

    // Act
    final result =
        await usecase.updateProfileKaryawan(updateKaryawanRequestModel);

    // Assert
    expect(result, Right(karyawanModel));
    verify(() => mockProfileRepository.updateProfileKaryawan(
        requestModel: updateKaryawanRequestModel)).called(1);
  });

  test('should return Failure when updateProfileKaryawan fails', () async {
    // Arrange
    final failure = ParsingFailure('Error');
    when(() => mockProfileRepository.updateProfileKaryawan(
            requestModel: updateKaryawanRequestModel))
        .thenAnswer((_) async => Left(failure));

    // Act
    final result =
        await usecase.updateProfileKaryawan(updateKaryawanRequestModel);

    // Assert
    expect(result, Left(failure));
    verify(() => mockProfileRepository.updateProfileKaryawan(
        requestModel: updateKaryawanRequestModel)).called(1);
  });
}
