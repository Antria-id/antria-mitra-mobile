import 'package:antria_mitra_mobile/src/core/services/user_cache_services.dart';
import 'package:antria_mitra_mobile/src/core/utils/request.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:antria_mitra_mobile/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:antria_mitra_mobile/src/features/auth/domain/usecases/login_usecase.dart';
import 'package:antria_mitra_mobile/src/features/auth/domain/usecases/register_usecase.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/data/datasources/riwayat_transaksi_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/data/repositories/riwayat_transaksi_repository_impl.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/domain/repositories/riwayat_transaksi_repository.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/domain/usecases/get_detail_transaksi_usecase.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/domain/usecases/get_riwayat_usecase.dart';
import 'package:antria_mitra_mobile/src/features/home/data/datasources/local/home_local_datasource.dart';
import 'package:antria_mitra_mobile/src/features/home/data/datasources/remote/home_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/home/data/repositories/home_repository_impl.dart';
import 'package:antria_mitra_mobile/src/features/home/domain/repositories/home_repository.dart';
import 'package:antria_mitra_mobile/src/features/home/domain/usecases/check_user_login_status_usecase.dart';
import 'package:antria_mitra_mobile/src/features/home/domain/usecases/get_daily_income_usecase.dart';
import 'package:antria_mitra_mobile/src/features/home/domain/usecases/get_pesanan_berlangsung_usecase.dart';
import 'package:antria_mitra_mobile/src/features/home/domain/usecases/get_user_local_usecase.dart';
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

  //transaksi

  //datasource
  serviceLocator.registerFactory<RiwayatTransaksiRemoteDatasource>(
      () => RiwayatTransaksiRemoteDatasourceImpl());

  //usecase
  serviceLocator.registerFactory<GetDetailTransaksiUsecase>(
      () => GetDetailTransaksiUsecase());
  serviceLocator.registerFactory<GetRiwayatTransaksiUsecase>(
      () => GetRiwayatTransaksiUsecase());

  //repository
  serviceLocator.registerFactory<RiwayatTransaksiRepository>(
      () => RiwayatTransaksiRepositoryImpl());

  //external
  final sharedPreferences = await SharedPreferences.getInstance();
  serviceLocator.registerFactory<SharedPreferences>(() => sharedPreferences);
}
