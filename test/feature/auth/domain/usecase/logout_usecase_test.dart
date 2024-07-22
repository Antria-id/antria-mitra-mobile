import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';
import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/core/utils/request.dart';
import 'package:antria_mitra_mobile/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:antria_mitra_mobile/src/features/auth/domain/usecases/logout_user_usecase.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

class MockRequest extends Mock implements Request {}

void main() {
  late MockAuthRepository mockAuthRepository;
  late MockRequest mockRequest;
  late LogoutUserUsecase logoutUserUsecase;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    mockRequest = MockRequest();
    logoutUserUsecase = LogoutUserUsecase();

    // Register the mocks in the service locator
    serviceLocator.registerSingleton<AuthRepository>(mockAuthRepository);
    serviceLocator.registerSingleton<Request>(mockRequest);
  });

  tearDown(() {
    serviceLocator.reset();
  });

  test(
      'should clear authorization and return Right when deletion is successful',
      () async {
    // Arrange
    when(() => mockAuthRepository.deleteUserFromLocalStorage())
        .thenAnswer((_) async => const Right(null));

    // Act
    final result = await logoutUserUsecase.deleteUserFromLocalStorage();

    // Assert
    expect(result, const Right(null));
    verify(() => mockAuthRepository.deleteUserFromLocalStorage()).called(1);
    verify(() => mockRequest.clearAuthorization()).called(1);
  });

  test('should return Left with Failure when deletion is unsuccessful',
      () async {
    // Arrange
    final tFailure = ParsingFailure('Failed Delete user');
    when(() => mockAuthRepository.deleteUserFromLocalStorage())
        .thenAnswer((_) async => Left(tFailure));

    // Act
    final result = await logoutUserUsecase.deleteUserFromLocalStorage();

    // Assert
    expect(result, Left(tFailure));
    verify(() => mockAuthRepository.deleteUserFromLocalStorage()).called(1);
    verifyNever(() => mockRequest.clearAuthorization());
  });
}
