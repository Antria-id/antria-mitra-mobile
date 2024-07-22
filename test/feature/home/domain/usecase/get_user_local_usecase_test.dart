import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/user_model.dart';
import 'package:antria_mitra_mobile/src/features/home/domain/repositories/home_repository.dart';
import 'package:antria_mitra_mobile/src/features/home/domain/usecases/get_user_local_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockHomeRepository extends Mock implements HomeRepository {}

void main() {
  late GetUserLocalUsecase getUserLocalUsecase;
  late MockHomeRepository mockHomeRepository;

  setUp(() {
    mockHomeRepository = MockHomeRepository();
    getUserLocalUsecase = GetUserLocalUsecase();

    // Register the mock instance with the service locator
    serviceLocator.registerSingleton<HomeRepository>(mockHomeRepository);
  });

  tearDown(() {
    serviceLocator.reset();
  });

  test('should return a UserModel when the call to repository is successful',
      () async {
    // Arrange
    final tUserModel = UserModel(
      iat: 1720319728,
      exp: 1720406128,
      sub: 7,
      role: "karyawan",
      username: "Furuhan",
      mitraId: 2,
      picture: "09ff6cde-eaf8-4a4b-9933-f55aeb4361dd.jpg",
      email: "test123@gmail.com",
      isOwner: false,
    );
    when(() => mockHomeRepository.getUserFromLocalStorage())
        .thenAnswer((_) async => Right(tUserModel));

    // Act
    final result = await getUserLocalUsecase.getUserFromLocalStorage();

    // Assert
    expect(result, Right(tUserModel));
    verify(() => mockHomeRepository.getUserFromLocalStorage()).called(1);
  });

  test('should return a Failure when the call to repository is unsuccessful',
      () async {
    // Arrange
    final tFailure = ParsingFailure('Error Parse API');
    when(() => mockHomeRepository.getUserFromLocalStorage())
        .thenAnswer((_) async => Left(tFailure));

    // Act
    final result = await getUserLocalUsecase.getUserFromLocalStorage();

    // Assert
    expect(result, Left(tFailure));
    verify(() => mockHomeRepository.getUserFromLocalStorage()).called(1);
  });
}
