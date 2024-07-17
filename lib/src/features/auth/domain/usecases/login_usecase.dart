import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/core/utils/request.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/request/login_request_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/login_reponse_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class LoginUsecase {
  Future<Either<Failure, LoginResponse>> loginUser(
      LoginRequest requestUser) async {
    final response =
        await serviceLocator<AuthRepository>().login(requestUser: requestUser);
    if (response.isRight()) {
      final remoteUser = response.getOrElse(() => const LoginResponse());
      serviceLocator<Request>().updateAuthorization(
        remoteUser.accessToken!,
      );
    }
    return response;
  }
}
