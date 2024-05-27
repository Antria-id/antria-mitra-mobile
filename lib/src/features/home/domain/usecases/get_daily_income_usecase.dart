import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/home/data/datasources/remote/home_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/home/data/models/daily_income/daily_income_model.dart';
import 'package:dartz/dartz.dart';

class GetDailyIncomeUsecase {
  Future<Either<Failure, List<DailyIncome>>> getDailyIncome() {
    return serviceLocator<HomeRemoteDatasource>().getDailyIncome();
  }
}
