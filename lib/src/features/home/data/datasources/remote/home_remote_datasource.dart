import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/core/services/user_cache_services.dart';
import 'package:antria_mitra_mobile/src/core/utils/constant.dart';
import 'package:antria_mitra_mobile/src/core/utils/request.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/user/user_model.dart';
import 'package:antria_mitra_mobile/src/features/home/data/models/daily_income/daily_income_model.dart';
import 'package:antria_mitra_mobile/src/features/home/data/models/pesanan_berlangsung/pesanan_berlangsung_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRemoteDatasource {
  Future<Either<Failure, List<PesananBerlangsungModel>>>
      getPesananBerlangsung();
  Future<Either<Failure, List<DailyIncome>>> getDailyIncome();
}

class HomeRemoteDatasourceImpl implements HomeRemoteDatasource {
  final Request request = serviceLocator<Request>();
  @override
  Future<Either<Failure, List<PesananBerlangsungModel>>>
      getPesananBerlangsung() async {
    try {
      final UserCacheService userCacheService =
          serviceLocator<UserCacheService>();
      final UserModel? user = await userCacheService.getUser();
      if (user == null) {
        return const Left(ParsingFailure('User not found'));
      }
      final int mitraId = user.mitraId!;
      final response = await request.get(APIUrl.getPesananPath(mitraId));

      if (response.statusCode == 200) {
        final dynamic responseData = response.data;
        if (responseData is List<dynamic>) {
          final List<PesananBerlangsungModel> pesanan = responseData
              .map((json) => PesananBerlangsungModel.fromJson(json))
              .toList();
          return Right(pesanan);
        } else {
          return const Left(ParsingFailure('Invalid response format'));
        }
      } else {
        return Left(ConnectionFailure(response.data['message']));
      }
    } catch (e) {
      return Left(ParsingFailure('Unable to parse the response: $e'));
    }
  }

  @override
  Future<Either<Failure, List<DailyIncome>>> getDailyIncome() async {
    try {
      final UserCacheService userCacheService =
          serviceLocator<UserCacheService>();
      final UserModel? user = await userCacheService.getUser();
      if (user == null) {
        return const Left(ParsingFailure('User not found'));
      }
      final int mitraId = user.mitraId!;
      final response = await request.get(APIUrl.getPesananPath(mitraId));

      if (response.statusCode == 200) {
        final dynamic responseData = response.data;
        if (responseData is List<dynamic>) {
          final List<DailyIncome> dailyIncome =
              responseData.map((json) => DailyIncome.fromJson(json)).toList();
          return Right(dailyIncome);
        } else {
          return const Left(ParsingFailure('Invalid response format'));
        }
      } else {
        return Left(ConnectionFailure(response.data['message']));
      }
    } catch (e) {
      return Left(ParsingFailure('Unable to parse the response: $e'));
    }
  }
}
