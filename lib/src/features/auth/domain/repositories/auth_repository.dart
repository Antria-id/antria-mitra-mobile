import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/request/login_request_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/request/register_request_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/login_reponse_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/register_reponse_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/send_email_response_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/verify_otp_response_model.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/response/karyawan_model.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<Failure, LoginResponse>> login({
    required LoginRequest requestUser,
  });
  Future<Either<Failure, RegisterResponse>> register(
      {required RegisterRequest requestUser});
  Future<Either<Failure, void>> deleteUserFromLocalStorage();
  Future<Either<Failure, SendEmailResponse>> getOTP({required String email});
  Future<Either<Failure, VerifyOtpResponse>> verifyOTP(
      {required String email, required int otp});
  Future<Either<Failure, KaryawanModel>> updatePassword(
      {required String password, required int id, required String token});
}
