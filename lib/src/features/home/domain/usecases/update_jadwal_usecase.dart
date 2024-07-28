import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/home/data/models/stataus_usaha_request_model.dart';
import 'package:antria_mitra_mobile/src/features/home/data/models/status_usaha_model.dart';
import 'package:antria_mitra_mobile/src/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

class UpdateStatusUsahaUsecase {
  Future<Either<Failure, StatusUsahaModel>> UpdateStatus(
      StatusUsahaRequest request) async {
    final response = await serviceLocator<HomeRepository>().updateStatusUsaha(
      requestModel: request,
    );
    return response;
  }
}
