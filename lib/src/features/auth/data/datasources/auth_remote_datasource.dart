import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/core/services/user_cache_services.dart';
import 'package:antria_mitra_mobile/src/core/utils/constant.dart';
import 'package:antria_mitra_mobile/src/core/utils/request.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/request/login_request_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/request/register_request_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/login_reponse_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/register_reponse_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/send_email_response_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/verify_otp_response_model.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/response/karyawan_model.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRemoteDatasource {
  Future<Either<Failure, LoginResponse>> loginUser(
      {required LoginRequest requestUser});
  Future<Either<Failure, RegisterResponse>> registerUser(
      {required RegisterRequest requestUser});
  Future<Either<Failure, SendEmailResponse>> getOTP({required String email});
  Future<Either<Failure, VerifyOtpResponse>> verifyOTP(
      {required String email, required int otp});
  Future<Either<Failure, KaryawanModel>> updatePassword(
      {required String password, required int id, required String token});
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
        if (loginResponse.accessToken != null) {
          await userCacheService.saveAccessToken(loginResponse.accessToken!);
          await userCacheService.setToken(loginResponse.accessToken!);
          return Right(loginResponse);
        } else {
          return const Left(Exception('Access token is null'));
        }
      } else {
        return Left(ConnectionFailure(response.data['message']));
      }
    } catch (e) {
      return Left(
          Exception('Exception Occurred in AuthRemoteDataSourceImpl: $e'));
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
      return const Left(
        Exception('Exception Occured in AuthRemoteDataSourceImpl'),
      );
    }
  }

  @override
  Future<Either<Failure, SendEmailResponse>> getOTP(
      {required String email}) async {
    try {
      final response = await request.post(
        APIUrl.getForgotPassPath(email),
      );
      if (response.statusCode == 201) {
        SendEmailResponse sendEmailResponse =
            SendEmailResponse.fromJson(response.data);
        return Right(sendEmailResponse);
      }
      return Left(ConnectionFailure(response.data['message']));
    } catch (e) {
      return const Left(
        Exception('Exception Occured in AuthRemoteDataSourceImpl'),
      );
    }
  }

  @override
  Future<Either<Failure, VerifyOtpResponse>> verifyOTP(
      {required String email, required int otp}) async {
    try {
      final response = await request.post(
        APIUrl.getOTPPath(email, otp),
      );
      if (response.statusCode == 201) {
        VerifyOtpResponse verifyOtpResponse =
            VerifyOtpResponse.fromJson(response.data);
        return Right(verifyOtpResponse);
      }
      return Left(ConnectionFailure(response.data['message']));
    } catch (e) {
      return const Left(
        Exception('Exception Occured in AuthRemoteDataSourceImpl'),
      );
    }
  }

  @override
  Future<Either<Failure, KaryawanModel>> updatePassword(
      {required String password,
      required int id,
      required String token}) async {
    try {
      final headers = {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      };
      final response = await request.put(
        APIUrl.getKaryawanPath(id),
        headers: headers,
        data: {'password': password},
      );
      if (response.statusCode == 200) {
        KaryawanModel karyawanModel = KaryawanModel.fromJson(response.data);
        return Right(karyawanModel);
      }
      return Left(ConnectionFailure(response.data['message']));
    } catch (e) {
      return const Left(
        Exception('Exception Occured in AuthRemoteDataSourceImpl'),
      );
    }
  }
}
