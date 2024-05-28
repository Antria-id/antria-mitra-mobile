import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/core/utils/request.dart';
import 'package:antria_mitra_mobile/src/features/profile/domain/repositories/profile_repository.dart';
import 'package:dartz/dartz.dart';

class LogoutUserUsecase {
  Future<Either<Failure, void>> deleteUserFromLocalStorage() async {
    final response =
        await serviceLocator<ProfileRepository>().deleteUserFromLocalStorage();
    if (response.isRight()) {
      serviceLocator<Request>().clearAuthorization();
    }
    return response;
  }
}