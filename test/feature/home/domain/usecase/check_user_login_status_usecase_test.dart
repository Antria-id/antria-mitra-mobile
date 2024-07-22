import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/core/services/user_cache_services.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/user_model.dart';
import 'package:antria_mitra_mobile/src/features/home/domain/usecases/check_user_login_status_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockUserCacheService extends Mock implements UserCacheService {}

void main() {
  late CheckUserLoginStatusImpl checkUserLoginStatus;
  late MockUserCacheService mockUserCacheService;

  setUp(() {
    mockUserCacheService = MockUserCacheService();
    checkUserLoginStatus = CheckUserLoginStatusImpl();
    serviceLocator.registerSingleton<UserCacheService>(mockUserCacheService);
  });

  tearDown(() {
    serviceLocator.reset();
  });

  test('should return true when user is logged in', () async {
    // Arrange
    when(() => mockUserCacheService.getUser()).thenAnswer(
      (_) async => UserModel(
        iat: 1720319728,
        exp: 1720406128,
        sub: 7,
        role: "karyawan",
        username: "Furuhan",
        mitraId: 2,
        picture: "09ff6cde-eaf8-4a4b-9933-f55aeb4361dd.jpg",
        email: "test123@gmail.com",
        isOwner: false,
      ),
    );

    // Act
    final result = await checkUserLoginStatus.checkIfUserLoggedIn();

    // Assert
    expect(result, true);
    verify(() => mockUserCacheService.getUser()).called(1);
  });

  test('should return false when user is not logged in', () async {
    // Arrange
    when(() => mockUserCacheService.getUser()).thenAnswer((_) async => null);

    // Act
    final result = await checkUserLoginStatus.checkIfUserLoggedIn();

    // Assert
    expect(result, false);
    verify(() => mockUserCacheService.getUser()).called(1);
  });
}
