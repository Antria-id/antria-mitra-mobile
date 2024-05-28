import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/data/models/request/mitra_request_model.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/data/models/response/mitra_model.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/domain/repositories/jadwal_repository.dart';
import 'package:dartz/dartz.dart';

class UpdateJadwalUsecase {
  Future<Either<Failure, MitraModel>> updateJadwal(
      MitraRequestModel request) async {
    final response = await serviceLocator<JadwalRepository>().updateJadwalMitra(
      requestModel: request,
    );
    return response;
  }
}
