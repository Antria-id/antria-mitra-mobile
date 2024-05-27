import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/request/register/register_request_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/register/register_reponse_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class RegisterUsecase {
  Future<Either<Failure, RegisterResponse>> registerUser(
      RegisterRequest requestUser) async {
    final response = await serviceLocator<AuthRepository>()
        .register(requestUser: requestUser);
    return response;
  }
}
