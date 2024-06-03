import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/core/services/user_cache_services.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/user/user_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeLocalUserDatasource {
  Future<Either<Failure, UserModel>> getUserFromLocalStorage();
}

class HomeLocalUserDatasourceImpl extends HomeLocalUserDatasource {
  @override
  Future<Either<Failure, UserModel>> getUserFromLocalStorage() async {
    try {
      final user = serviceLocator<UserCacheService>().user;
      if (user != null) {
        return Right(UserModel.fromJson((user.toJson())));
      }
      return const Left(
        LocalDatabaseQueryFailure('Unable to query form the shared prefs'),
      );
    } catch (e) {
      return const Left(
        ParsingFailure(
          'Parsing failure occured in HomepageLocalDataSourceImlp',
        ),
      );
    }
  }
}
