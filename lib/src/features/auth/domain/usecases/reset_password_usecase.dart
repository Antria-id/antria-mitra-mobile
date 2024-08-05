import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/response/karyawan_model.dart';
import 'package:dartz/dartz.dart';

class ResetPasswordUsecase {
  Future<Either<Failure, KaryawanModel>> updatePassword(
      {required String password,
      required int id,
      required String token}) async {
    final response = await serviceLocator<AuthRepository>()
        .updatePassword(password: password, id: id, token: token);
    return response;
  }
}
