import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';
import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/core/utils/request.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/request/login_request_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/login_reponse_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:antria_mitra_mobile/src/features/auth/domain/usecases/login_usecase.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

class MockRequest extends Mock implements Request {}

void main() {
  late MockAuthRepository mockAuthRepository;
  late MockRequest mockRequest;
  late LoginUsecase loginUsecase;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    mockRequest = MockRequest();
    loginUsecase = LoginUsecase();

    // Register the mocks in the service locator
    serviceLocator.registerSingleton<AuthRepository>(mockAuthRepository);
    serviceLocator.registerSingleton<Request>(mockRequest);
  });

  tearDown(() {
    serviceLocator.reset();
  });

  const tLoginRequest = LoginRequest(username: 'test', password: 'test');
  const tLoginResponse = LoginResponse(accessToken: 'token');

  test('should return Right with LoginResponse when login is successful',
      () async {
    // Arrange
    when(() => mockAuthRepository.login(requestUser: tLoginRequest))
        .thenAnswer((_) async => const Right(tLoginResponse));

    // Act
    final result = await loginUsecase.loginUser(tLoginRequest);

    // Assert
    expect(result, const Right(tLoginResponse));
    verify(() => mockAuthRepository.login(requestUser: tLoginRequest))
        .called(1);
    verify(() => mockRequest.updateAuthorization('token')).called(1);
  });

  test('should return Left with Failure when login is unsuccessful', () async {
    // Arrange
    const tFailure = ParsingFailure('Failed Login');
    when(() => mockAuthRepository.login(requestUser: tLoginRequest))
        .thenAnswer((_) async => const Left(tFailure));

    // Act
    final result = await loginUsecase.loginUser(tLoginRequest);

    // Assert
    expect(result, const Left(tFailure));
    verify(() => mockAuthRepository.login(requestUser: tLoginRequest))
        .called(1);
    verifyNever(() => mockRequest.updateAuthorization(any()));
  });
}
