import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/request/update_usaha_request.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/response/usaha_response_model.dart';
import 'package:antria_mitra_mobile/src/features/profile/domain/repositories/profile_repository.dart';
import 'package:dartz/dartz.dart';

class UpdateInformasiUsahaUsecase {
  Future<Either<Failure, UsahaResponseModel>> updateInformasiUsaha(
      UpdateUsahaRequestModel requestModel) async {
    final response = await serviceLocator<ProfileRepository>()
        .updateInformasiUsaha(requestModel: requestModel);
    return response;
  }
}
