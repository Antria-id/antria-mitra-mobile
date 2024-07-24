import 'package:antria_mitra_mobile/src/core/network/network_checker.dart';
import 'package:antria_mitra_mobile/src/core/services/user_cache_services.dart';
import 'package:antria_mitra_mobile/src/core/utils/request.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/datasources/antrian_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/repositories/antrian_repository_impl.dart';
import 'package:antria_mitra_mobile/src/features/antrian/domain/repositories/antrian_repository.dart';
import 'package:antria_mitra_mobile/src/features/antrian/domain/usecases/get_antrian_usecase.dart';
import 'package:antria_mitra_mobile/src/features/antrian/domain/usecases/get_pesanan_invoice_usecase.dart';
import 'package:antria_mitra_mobile/src/features/antrian/domain/usecases/update_status_pesanan_usecase.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/datasources/auth_local_datasources.dart';
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
import 'package:antria_mitra_mobile/src/features/home/domain/usecases/get_pesanan_mitra_usecase.dart';
import 'package:antria_mitra_mobile/src/features/home/domain/usecases/get_user_local_usecase.dart';
import 'package:antria_mitra_mobile/src/features/home/domain/usecases/get_user_remote_usecase.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/data/datasources/jadwal_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/data/repositories/jadwal_repository_impl.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/domain/repositories/jadwal_repository.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/domain/usecases/get_jadwal_usecase.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/domain/usecases/update_jadwal_usecase.dart';
import 'package:antria_mitra_mobile/src/features/kasir/data/datasources/kasir_local_datasource.dart';
import 'package:antria_mitra_mobile/src/features/kasir/data/datasources/kasir_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/kasir/data/repositories/kasir_repository_impl.dart';
import 'package:antria_mitra_mobile/src/features/kasir/domain/repositories/kasir_repository.dart';
import 'package:antria_mitra_mobile/src/features/kasir/domain/usecases/get_product_usecase.dart';
import 'package:antria_mitra_mobile/src/features/kasir/domain/usecases/order_list_usecase.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/datasources/profile_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/repositories/profile_repository_impl.dart';
import 'package:antria_mitra_mobile/src/features/profile/domain/repositories/profile_repository.dart';
import 'package:antria_mitra_mobile/src/features/profile/domain/usecases/get_informasi_usaha_usecase.dart';
import 'package:antria_mitra_mobile/src/features/profile/domain/usecases/get_karyawan_profile_usecase.dart';
import 'package:antria_mitra_mobile/src/features/profile/domain/usecases/get_ulasan_mitra_usecase.dart';
import 'package:antria_mitra_mobile/src/features/auth/domain/usecases/logout_user_usecase.dart';
import 'package:antria_mitra_mobile/src/features/profile/domain/usecases/update_karyawan_profile_usecase.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
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
  serviceLocator
      .registerFactory<AuthLocalDatasource>(() => AuthLocalDatasourceImpl());
  //
  //usecase
  serviceLocator.registerFactory<LoginUsecase>(() => LoginUsecase());
  serviceLocator.registerFactory<RegisterUsecase>(() => RegisterUsecase());
  serviceLocator.registerFactory<LogoutUserUsecase>(() => LogoutUserUsecase());

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
  serviceLocator
      .registerFactory<GetUserRemoteUsecase>(() => GetUserRemoteUsecase());
  serviceLocator
      .registerFactory<GetPesananMitraUsecase>(() => GetPesananMitraUsecase());

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

  //Profile

  //datasource
  serviceLocator.registerFactory<ProfileUserDatasource>(
      () => ProfileUserDatasourceImpl());

  //usecase

  serviceLocator.registerFactory<GetKaryawanProfileUsecase>(
      () => GetKaryawanProfileUsecase());
  serviceLocator.registerFactory<UpdateKaryawanProfileUsecase>(
      () => UpdateKaryawanProfileUsecase());
  serviceLocator
      .registerFactory<GetUlasanMitraUsecase>(() => GetUlasanMitraUsecase());
  serviceLocator.registerFactory<GetInformasiUsahaUsecase>(
      () => GetInformasiUsahaUsecase());

  //Kasir

  //usecase
  serviceLocator.registerFactory<GetProductUsecase>(() => GetProductUsecase());
  serviceLocator.registerFactory<OrderListUsecase>(() => OrderListUsecase());

  //datasource
  serviceLocator.registerFactory<KasirRemoteDatasource>(
      () => KasirRemoteDatasourceImpl());
  serviceLocator
      .registerFactory<KasirLocalDatasource>(() => KasirLocalDatasourceImpl());

  //Repository
  serviceLocator.registerFactory<KasirRepository>(() => KasirRepositoryImpl());

  //Jadwal

  //usecase
  serviceLocator.registerFactory<GetJadwalUsecase>(() => GetJadwalUsecase());
  serviceLocator
      .registerFactory<UpdateJadwalUsecase>(() => UpdateJadwalUsecase());

  //datasource
  serviceLocator.registerFactory<JadwalRemoteDatasource>(
      () => JadwalRemoteDatasourceImpl());

  //Repository
  serviceLocator
      .registerFactory<JadwalRepository>(() => JadwalRepositoryImpl());

  //Antrian

  //usecase
  serviceLocator.registerFactory<GetAntrianUsecase>(() => GetAntrianUsecase());
  serviceLocator.registerFactory<GetPesananInvoiceUsecase>(
      () => GetPesananInvoiceUsecase());
  serviceLocator.registerFactory<UpdateStatusPesananUsecase>(
      () => UpdateStatusPesananUsecase());

  //datasource
  serviceLocator.registerFactory<AntrianRemoteDatasource>(
      () => AntrianRemoteDatasourceImpl());

  //Repository
  serviceLocator
      .registerFactory<AntrianRepository>(() => AntrianRepositoryImpl());

  //repository
  serviceLocator
      .registerFactory<ProfileRepository>(() => ProfileRepositoryImpl());

  ///***********************************************
  ///! Core
  /// sl.registerLazySingleton(() => InputConverter());
  serviceLocator.registerLazySingleton<NetworkChecker>(
      () => NetworkCheckerImpl(serviceLocator()));

  //external
  final sharedPreferences = await SharedPreferences.getInstance();
  serviceLocator.registerFactory<SharedPreferences>(() => sharedPreferences);
  serviceLocator.registerLazySingleton(() => InternetConnectionChecker());
}
