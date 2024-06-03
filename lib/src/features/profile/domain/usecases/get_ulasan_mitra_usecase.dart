import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/response/ulasan_response.dart';
import 'package:antria_mitra_mobile/src/features/profile/domain/repositories/profile_repository.dart';
import 'package:dartz/dartz.dart';

class GetUlasanMitraUsecase {
  Future<Either<Failure, List<UlasanResponse>>> getUlasan() async {
    return serviceLocator<ProfileRepository>().getUlasan();
  }
}
