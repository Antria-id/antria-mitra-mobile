import 'dart:convert';

import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/request/update_usaha_request.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/response/usaha_response_model.dart';
import 'package:antria_mitra_mobile/src/features/profile/domain/repositories/profile_repository.dart';
import 'package:antria_mitra_mobile/src/features/profile/domain/usecases/update_informasi_usaha_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixture/fixture.dart';

// Mock class for ProfileRepository
class MockProfileRepository extends Mock implements ProfileRepository {}

void main() {
  late UpdateInformasiUsahaUsecase usecase;
  late MockProfileRepository mockProfileRepository;

  setUpAll(() {
    mockProfileRepository = MockProfileRepository();
    serviceLocator
        .registerFactory<ProfileRepository>(() => mockProfileRepository);
    usecase = UpdateInformasiUsahaUsecase();
  });

  final UpdateUsahaRequestModel updateUsahaRequestModel =
      UpdateUsahaRequestModel.fromJson(
          jsonDecode(fixture('update_usaha.json')));

  final UsahaResponseModel usahaResponseModel =
      UsahaResponseModel.fromJson(jsonDecode(fixture('update_usaha.json')));

  test(
      'should return UsahaResponseModel when updateInformasiUsaha is successful',
      () async {
    // Arrange
    when(() => mockProfileRepository.updateInformasiUsaha(
            requestModel: updateUsahaRequestModel))
        .thenAnswer((_) async => Right(usahaResponseModel));

    // Act
    final result = await usecase.updateInformasiUsaha(updateUsahaRequestModel);

    // Assert
    expect(result, Right(usahaResponseModel));
    verify(() => mockProfileRepository.updateInformasiUsaha(
        requestModel: updateUsahaRequestModel)).called(1);
  });

  test('should return Failure when updateInformasiUsaha fails', () async {
    // Arrange
    final failure = ParsingFailure('Error');
    when(() => mockProfileRepository.updateInformasiUsaha(
            requestModel: updateUsahaRequestModel))
        .thenAnswer((_) async => Left(failure));

    // Act
    final result = await usecase.updateInformasiUsaha(updateUsahaRequestModel);

    // Assert
    expect(result, Left(failure));
    verify(() => mockProfileRepository.updateInformasiUsaha(
        requestModel: updateUsahaRequestModel)).called(1);
  });
}
