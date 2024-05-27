import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/request/login/login_request_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/request/register/register_request_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/login/login_reponse_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/register/register_reponse_model.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<Failure, LoginResponse>> login({
    required LoginRequest requestUser,
  });
  Future<Either<Failure, RegisterResponse>> register(
      {required RegisterRequest requestUser});
}
