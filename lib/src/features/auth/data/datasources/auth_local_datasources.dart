import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/core/services/user_cache_services.dart';
import 'package:dartz/dartz.dart';

abstract class AuthLocalDatasource {
  Future<Either<Failure, void>> deleteUserFromLocalStorage();
}

class AuthLocalDatasourceImpl implements AuthLocalDatasource {
  @override
  Future<Either<Failure, void>> deleteUserFromLocalStorage() async {
    try {
      final deletionSuccess =
          await serviceLocator<UserCacheService>().deleteUser();
      if (deletionSuccess) {
        return const Right(null);
      } else {
        return const Left(
          LocalDatabaseQueryFailure(
            'Unable to delete user from the shared prefs',
          ),
        );
      }
    } catch (e, stackTrace) {
      return Left(ParsingFailure(
          'Parsing failure occurred in HomeLocalUserDatasourceImpl: $e\nStack trace: $stackTrace'));
    }
  }
}
