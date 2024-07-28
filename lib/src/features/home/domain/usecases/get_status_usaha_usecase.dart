import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/home/data/models/status_usaha_model.dart';
import 'package:antria_mitra_mobile/src/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

class GetStatusUsahaUsecase {
  Future<Either<Failure, StatusUsahaModel>> getStatus() {
    return serviceLocator<HomeRepository>().getStatusUsaha();
  }
}
