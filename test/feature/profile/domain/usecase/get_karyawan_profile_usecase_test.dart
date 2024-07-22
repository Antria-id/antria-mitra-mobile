import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/response/karyawan_model.dart';
import 'package:antria_mitra_mobile/src/features/profile/domain/repositories/profile_repository.dart';
import 'package:antria_mitra_mobile/src/features/profile/domain/usecases/get_karyawan_profile_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';

// Mock class for ProfileRepository
class MockProfileRepository extends Mock implements ProfileRepository {}

void main() {
  late GetKaryawanProfileUsecase usecase;
  late MockProfileRepository mockProfileRepository;

  setUpAll(() {
    mockProfileRepository = MockProfileRepository();
    serviceLocator
        .registerFactory<ProfileRepository>(() => mockProfileRepository);
    usecase = GetKaryawanProfileUsecase();
  });

  final karyawanModel = KaryawanModel(
    id: 1,
    username: 'john_doe',
    email: 'john@example.com',
    profilePicture: 'profile_pic.jpg',
    nama: 'John Doe',
    handphone: '123456789',
    alamat: '123 Main St',
    password: '',
    isOwner: false,
    mitraId: 2,
    createdAt: DateTime.parse("2024-05-01T10:35:07.243Z"),
    updatedAt: DateTime.parse("2024-05-01T10:35:07.243Z"),
  );

  test('should return KaryawanModel when getKaryawan is successful', () async {
    // Arrange
    when(() => mockProfileRepository.getKaryawan())
        .thenAnswer((_) async => Right(karyawanModel));

    // Act
    final result = await usecase.getKaryawan();

    // Assert
    expect(result, Right(karyawanModel));
    verify(() => mockProfileRepository.getKaryawan()).called(1);
  });

  test('should return Failure when getKaryawan fails', () async {
    // Arrange
    final failure = ParsingFailure('Error');
    when(() => mockProfileRepository.getKaryawan())
        .thenAnswer((_) async => Left(failure));

    // Act
    final result = await usecase.getKaryawan();

    // Assert
    expect(result, Left(failure));
    verify(() => mockProfileRepository.getKaryawan()).called(1);
  });
}
