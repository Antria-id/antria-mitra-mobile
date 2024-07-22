import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/response/usaha_response_model.dart';
import 'package:antria_mitra_mobile/src/features/profile/domain/repositories/profile_repository.dart';
import 'package:antria_mitra_mobile/src/features/profile/domain/usecases/get_informasi_usaha_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';

// Mock class for ProfileRepository
class MockProfileRepository extends Mock implements ProfileRepository {}

void main() {
  late GetInformasiUsahaUsecase usecase;
  late MockProfileRepository mockProfileRepository;

  setUpAll(() {
    mockProfileRepository = MockProfileRepository();
    serviceLocator
        .registerFactory<ProfileRepository>(() => mockProfileRepository);
    usecase = GetInformasiUsahaUsecase();
  });

  final usahaResponseModel = UsahaResponseModel(
    namaToko: 'Toko A',
    deskripsiToko: 'Deskripsi Toko A',
    alamat: 'Alamat Toko A',
    linkGmaps: 'https://maps.google.com/?q=Toko+A',
    gambarToko: 'https://example.com/gambar_toko_a.jpg',
  );

  test('should return UsahaResponseModel when getInformasiUsaha is successful',
      () async {
    // Arrange
    when(() => mockProfileRepository.getInformasiUsaha())
        .thenAnswer((_) async => Right(usahaResponseModel));

    // Act
    final result = await usecase.getInformasiUsaha();

    // Assert
    expect(result, Right(usahaResponseModel));
    verify(() => mockProfileRepository.getInformasiUsaha()).called(1);
  });

  test('should return Failure when getInformasiUsaha fails', () async {
    // Arrange
    final failure = ParsingFailure('Error');
    when(() => mockProfileRepository.getInformasiUsaha())
        .thenAnswer((_) async => Left(failure));

    // Act
    final result = await usecase.getInformasiUsaha();

    // Assert
    expect(result, Left(failure));
    verify(() => mockProfileRepository.getInformasiUsaha()).called(1);
  });
}
