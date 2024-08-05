import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/datasources/auth_local_datasources.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/request/login_request_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/request/register_request_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/login_reponse_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/register_reponse_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/send_email_response_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/verify_otp_response_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/response/karyawan_model.dart';
import 'package:dartz/dartz.dart';

class AuthRepositoryImpl implements AuthRepository {
  Future<Either<Failure, LoginResponse>> login(
      {required LoginRequest requestUser}) {
    return serviceLocator<AuthRemoteDatasource>().loginUser(
      requestUser: requestUser,
    );
  }

  @override
  Future<Either<Failure, RegisterResponse>> register(
      {required RegisterRequest requestUser}) {
    return serviceLocator<AuthRemoteDatasource>().registerUser(
      requestUser: requestUser,
    );
  }

  @override
  Future<Either<Failure, void>> deleteUserFromLocalStorage() {
    return serviceLocator<AuthLocalDatasource>().deleteUserFromLocalStorage();
  }

  @override
  Future<Either<Failure, SendEmailResponse>> getOTP({required String email}) {
    return serviceLocator<AuthRemoteDatasource>().getOTP(email: email);
  }

  @override
  Future<Either<Failure, VerifyOtpResponse>> verifyOTP(
      {required String email, required int otp}) {
    return serviceLocator<AuthRemoteDatasource>()
        .verifyOTP(email: email, otp: otp);
  }

  @override
  Future<Either<Failure, KaryawanModel>> updatePassword(
      {required String password, required int id, required String token}) {
    return serviceLocator<AuthRemoteDatasource>()
        .updatePassword(password: password, id: id, token: token);
  }
}
