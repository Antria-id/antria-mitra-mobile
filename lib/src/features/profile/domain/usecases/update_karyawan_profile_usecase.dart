import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/request/update_karyawan_request_model.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/response/karyawan_model.dart';
import 'package:antria_mitra_mobile/src/features/profile/domain/repositories/profile_repository.dart';
import 'package:dartz/dartz.dart';

class UpdateKaryawanProfileUsecase {
  Future<Either<Failure, KaryawanModel>> updateProfileKaryawan(
      UpdateKaryawanRequestModel request) async {
    final response = await serviceLocator<ProfileRepository>()
        .updateProfileKaryawan(requestModel: request);
    return response;
  }
}
