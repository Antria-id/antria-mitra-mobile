import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/user/user_model.dart';
import 'package:antria_mitra_mobile/src/features/home/data/datasources/local/home_local_datasource.dart';
import 'package:antria_mitra_mobile/src/features/home/data/datasources/remote/home_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/home/data/models/daily_income/daily_income_model.dart';
import 'package:antria_mitra_mobile/src/features/home/data/models/pesanan_berlangsung/pesanan_berlangsung_model.dart';
import 'package:antria_mitra_mobile/src/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

class HomeRepositoryImpl extends HomeRepository {
  @override
  Future<Either<Failure, UserModel>> getUserFromLocalStorage() {
    return serviceLocator<HomeLocalUserDatasource>().getUserFromLocalStorage();
  }

  @override
  Future<Either<Failure, List<PesananBerlangsungModel>>>
      getPesananBerlangsung() {
    return serviceLocator<HomeRemoteDatasource>().getPesananBerlangsung();
  }

  @override
  Future<Either<Failure, List<DailyIncome>>> getDailyIncome() {
    return serviceLocator<HomeRemoteDatasource>().getDailyIncome();
  }
}
