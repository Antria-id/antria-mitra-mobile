import 'package:antria_mitra_mobile/src/core/services/user_cache_services.dart';
import 'package:antria_mitra_mobile/src/core/utils/request.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:antria_mitra_mobile/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:antria_mitra_mobile/src/features/auth/domain/usecases/login_usecase.dart';
import 'package:antria_mitra_mobile/src/features/auth/domain/usecases/register_usecase.dart';
import 'package:antria_mitra_mobile/src/features/home/data/datasources/local/home_local_datasource.dart';
import 'package:antria_mitra_mobile/src/features/home/data/datasources/remote/home_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/home/data/repositories/home_repository_impl.dart';
import 'package:antria_mitra_mobile/src/features/home/domain/repositories/home_repository.dart';
import 'package:antria_mitra_mobile/src/features/home/domain/usecases/check_user_login_status_usecase.dart';
import 'package:antria_mitra_mobile/src/features/home/domain/usecases/get_daily_income_usecase.dart';
import 'package:antria_mitra_mobile/src/features/home/domain/usecases/get_pesanan_berlangsung_usecase.dart';
import 'package:antria_mitra_mobile/src/features/home/domain/usecases/get_user_local_usecase.dart';
import 'package:antria_mitra_mobile/src/features/kasir/data/datasources/product_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/kasir/data/repositories/kasir_repository_impl.dart';
import 'package:antria_mitra_mobile/src/features/kasir/domain/repositories/kasir_repository.dart';
import 'package:antria_mitra_mobile/src/features/kasir/domain/usecases/get_product_usecase.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/datasources/profile_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/repositories/profile_repository_impl.dart';
import 'package:antria_mitra_mobile/src/features/profile/domain/repositories/profile_repository.dart';
import 'package:antria_mitra_mobile/src/features/profile/domain/usecases/get_karyawan_profile_usecase.dart';
import 'package:antria_mitra_mobile/src/features/profile/domain/usecases/get_ulasan_mitra_usecase.dart';
import 'package:antria_mitra_mobile/src/features/profile/domain/usecases/logout_user_usecase.dart';
import 'package:antria_mitra_mobile/src/features/profile/domain/usecases/update_karyawan_profile_usecase.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final serviceLocator = GetIt.instance;

Future<void> setUpServiceLocator() async {
  serviceLocator.registerFactory<CheckUserLoginStatus>(
    () => CheckUserLoginStatusImpl(),
  );

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

  //datasource
  serviceLocator.registerFactory<HomeLocalUserDatasource>(
      () => HomeLocalUserDatasourceImpl());
  serviceLocator
      .registerFactory<HomeRemoteDatasource>(() => HomeRemoteDatasourceImpl());

  //usecase
  serviceLocator
      .registerFactory<GetUserLocalUsecase>(() => GetUserLocalUsecase());
  serviceLocator.registerFactory<GetPesananBerlangsungUsecase>(
      () => GetPesananBerlangsungUsecase());
  serviceLocator
      .registerFactory<GetDailyIncomeUsecase>(() => GetDailyIncomeUsecase());

  //repository
  serviceLocator.registerFactory<HomeRepository>(() => HomeRepositoryImpl());
  serviceLocator.registerSingleton<UserCacheService>(UserCacheService());

  //profile

  //datasource
  serviceLocator.registerFactory<ProfileUserDatasource>(
      () => ProfileUserDatasourceImpl());

  //usecase
  serviceLocator.registerFactory<LogoutUserUsecase>(() => LogoutUserUsecase());
  serviceLocator.registerFactory<GetKaryawanProfileUsecase>(
      () => GetKaryawanProfileUsecase());
  serviceLocator.registerFactory<UpdateKaryawanProfileUsecase>(
      () => UpdateKaryawanProfileUsecase());
  serviceLocator
      .registerFactory<GetUlasanMitraUsecase>(() => GetUlasanMitraUsecase());

  //Kasir

  //usecase
  serviceLocator.registerFactory<GetProductUsecase>(() => GetProductUsecase());

  //datasource
  serviceLocator.registerFactory<ProductRemoteDatasource>(
      () => ProductRemoteDatasourceImpl());

  //Repository
  serviceLocator.registerFactory<KasirRepository>(() => KasirRepositoryImpl());

  //repository
  serviceLocator
      .registerFactory<ProfileRepository>(() => ProfileRepositoryImpl());

  //external
  final sharedPreferences = await SharedPreferences.getInstance();
  serviceLocator.registerFactory<SharedPreferences>(() => sharedPreferences);
}
