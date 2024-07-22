import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/response/ulasan_response.dart';
import 'package:antria_mitra_mobile/src/features/profile/domain/repositories/profile_repository.dart';
import 'package:antria_mitra_mobile/src/features/profile/domain/usecases/get_ulasan_mitra_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';

// Mock class for ProfileRepository
class MockProfileRepository extends Mock implements ProfileRepository {}

void main() {
  late GetUlasanMitraUsecase usecase;
  late MockProfileRepository mockProfileRepository;

  setUpAll(() {
    mockProfileRepository = MockProfileRepository();
    serviceLocator
        .registerFactory<ProfileRepository>(() => mockProfileRepository);
    usecase = GetUlasanMitraUsecase();
  });

  final ulasanResponseList = [
    UlasanResponse(
      komentar: 'Makanan enak',
      rating: 45,
      mitraId: 1,
      pelangganId: 1,
      createdAt: DateTime.parse('2024-05-21T16:12:50.587Z'),
      updatedAt: DateTime.parse('2024-05-21T16:12:50.587Z'),
      reviewer: Reviewer(
        id: 1,
        username: 'hibikisoviena',
        password: 'hashed_password',
        email: 'hibiki@verni.yt',
        emailVerified: false,
        profilePicture: 'profile_picture.jpg',
        nama: 'hibiki veriny',
        handphone: '',
        alamat: '',
        wallet: 0,
        createdAt: DateTime.parse('2024-05-01T07:27:04.132Z'),
        updatedAt: DateTime.parse('2024-05-15T07:48:14.613Z'),
      ),
    ),
    UlasanResponse(
      komentar: 'Makanan enak',
      rating: 43,
      mitraId: 1,
      pelangganId: 2,
      createdAt: DateTime.parse('2024-05-21T16:35:57.033Z'),
      updatedAt: DateTime.parse('2024-05-21T16:35:57.033Z'),
      reviewer: Reviewer(
        id: 2,
        username: 'rovino',
        password: 'hashed_password',
        email: 'rovino@verni.yt',
        emailVerified: false,
        profilePicture: 'profile_picture.jpg',
        nama: 'rovinos',
        handphone: '',
        alamat: '',
        wallet: 2025000,
        createdAt: DateTime.parse('2024-05-01T10:35:07.243Z'),
        updatedAt: DateTime.parse('2024-05-01T10:35:07.243Z'),
      ),
    ),
  ];

  test('should return List<UlasanResponse> when getUlasan is successful',
      () async {
    // Arrange
    when(() => mockProfileRepository.getUlasan())
        .thenAnswer((_) async => Right(ulasanResponseList));

    // Act
    final result = await usecase.getUlasan();

    // Assert
    expect(result, Right(ulasanResponseList));
    verify(() => mockProfileRepository.getUlasan()).called(1);
  });

  test('should return Failure when getUlasan fails', () async {
    // Arrange
    final failure = ParsingFailure('Error');
    when(() => mockProfileRepository.getUlasan())
        .thenAnswer((_) async => Left(failure));

    // Act
    final result = await usecase.getUlasan();

    // Assert
    expect(result, Left(failure));
    verify(() => mockProfileRepository.getUlasan()).called(1);
  });
}
