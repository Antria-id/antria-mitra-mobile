import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/user/user_model.dart';
import 'package:antria_mitra_mobile/src/features/home/data/models/daily_income/daily_income_model.dart';
import 'package:antria_mitra_mobile/src/features/home/data/models/pesanan_berlangsung/pesanan_berlangsung_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepository {
  Future<Either<Failure, UserModel>> getUserFromLocalStorage();
  Future<Either<Failure, List<PesananBerlangsungModel>>>
      getPesananBerlangsung();
  Future<Either<Failure, List<DailyIncome>>> getDailyIncome();
}
