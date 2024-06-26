import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/core/services/user_cache_services.dart';
import 'package:antria_mitra_mobile/src/core/utils/constant.dart';
import 'package:antria_mitra_mobile/src/core/utils/request.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/request/login/login_request_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/request/register/register_request_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/login/login_reponse_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/register/register_reponse_model.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/rendering.dart';

abstract class AuthRemoteDatasource {
  Future<Either<Failure, LoginResponse>> loginUser(
      {required LoginRequest requestUser});
  Future<Either<Failure, RegisterResponse>> registerUser(
      {required RegisterRequest requestUser});
}

class AuthRemoteDatasourceImpl implements AuthRemoteDatasource {
  final Request request = serviceLocator<Request>();
  final UserCacheService userCacheService = serviceLocator<UserCacheService>();
  @override
  Future<Either<Failure, LoginResponse>> loginUser(
      {required LoginRequest requestUser}) async {
    try {
      final response = await request.post(
        APIUrl.loginUserPath,
        data: requestUser.toJson(),
      );
      if (response.statusCode == 200) {
        LoginResponse loginResponse = LoginResponse.fromJson(response.data);
        await userCacheService.saveAccessToken(loginResponse.accessToken!);
        return Right(loginResponse);
      }
      return Left(ConnectionFailure(response.data['message']));
    } catch (e) {
      debugPrint('AuthRemoteDataSourceImplError $e');
      return const Left(
        Exception('Exception Occured in AuthRemoteDataSourceImpl'),
      );
    }
  }

  @override
  Future<Either<Failure, RegisterResponse>> registerUser(
      {required RegisterRequest requestUser}) async {
    try {
      final response = await request.post(
        APIUrl.registerUserPath,
        data: requestUser.toJson(),
      );
      if (response.statusCode == 201) {
        RegisterResponse registerResponse =
            RegisterResponse.fromJson(response.data);
        return Right(registerResponse);
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
