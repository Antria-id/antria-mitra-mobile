import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/core/services/user_cache_services.dart';
import 'package:antria_mitra_mobile/src/core/utils/constant.dart';
import 'package:antria_mitra_mobile/src/core/utils/request.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/user/user_model.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/data/models/response/mitra_model.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/data/models/request/mitra_request_model.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/rendering.dart';

abstract class JadwalRemoteDatasource {
  Future<Either<Failure, MitraModel>> getJadwalMitra();
  Future<Either<Failure, MitraModel>> updateJadwalMitra(
      {required MitraRequestModel requestModel});
}

class JadwalRemoteDatasourceImpl implements JadwalRemoteDatasource {
  final Request request = serviceLocator<Request>();
  @override
  Future<Either<Failure, MitraModel>> getJadwalMitra() async {
    try {
      final UserCacheService userCacheService =
          serviceLocator<UserCacheService>();
      final UserModel? user = await userCacheService.getUser();
      if (user == null) {
        return const Left(
          ParsingFailure('User not found'),
        );
      }
      final int mitraId = user.mitraId!;
      final response = await request.get(APIUrl.getMitraPath(mitraId));
      if (response.statusCode == 200) {
        final MitraModel mitraModel = MitraModel.fromJson(response.data);
        return Right(mitraModel);
      }
      return Left(
        ConnectionFailure(response.data['message']),
      );
    } catch (e) {
      return const Left(
        ParsingFailure('Unable to parse the response'),
      );
    }
  }

  @override
  Future<Either<Failure, MitraModel>> updateJadwalMitra(
      {required MitraRequestModel requestModel}) async {
    try {
      final UserCacheService userCacheService =
          serviceLocator<UserCacheService>();
      final UserModel? user = await userCacheService.getUser();
      if (user == null) {
        return const Left(
          ParsingFailure('User not found'),
        );
      }
      final int mitraId = user.mitraId!;
      final response = await request.put(
        APIUrl.getMitraPath(mitraId),
        data: requestModel.toJson(),
      );
      if (response.statusCode == 200) {
        MitraModel mitraResponse = MitraModel.fromJson(response.data);
        return Right(mitraResponse);
      }
      return Left(ConnectionFailure(response.data['message']));
    } catch (e) {
      debugPrint('AuthRemoteDataSourceImplError $e');
      return const Left(
        Exception('Exception Occured in AuthRemoteDataSourceImpl'),
      );
    }
  }
}
