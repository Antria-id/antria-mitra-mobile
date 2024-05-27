import 'package:antria_mitra_mobile/src/core/services/user_cache_services.dart';
import 'package:antria_mitra_mobile/src/core/utils/request.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:antria_mitra_mobile/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:antria_mitra_mobile/src/features/auth/domain/usecases/login_usecase.dart';
import 'package:antria_mitra_mobile/src/features/auth/domain/usecases/register_usecase.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final serviceLocator = GetIt.instance;

Future<void> setUpServiceLocator() async {
  // serviceLocator.registerFactory<CheckUserLoginStatus>(
  //   () => CheckUserLoginStatusImpl(),
  // );

  //auth
  //datasource
  serviceLocator
      .registerFactory<AuthRemoteDatasource>(() => AuthRemoteDatasourceImpl());
  //
  //usecase
  serviceLocator.registerFactory<LoginUsecase>(() => LoginUsecase());
  serviceLocator.registerFactory<RegisterUsecase>(() => RegisterUsecase());

  //repository
  serviceLocator.registerFactory<AuthRepository>(() => AuthRepositoryImpl());

  // request
  serviceLocator.registerSingleton<Request>(Request());

  //home
  serviceLocator.registerSingleton<UserCacheService>(UserCacheService());

  //external
  final sharedPreferences = await SharedPreferences.getInstance();
  serviceLocator.registerFactory<SharedPreferences>(() => sharedPreferences);
}
