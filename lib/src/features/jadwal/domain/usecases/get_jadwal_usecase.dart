import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/data/models/response/mitra_model.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/domain/repositories/jadwal_repository.dart';
import 'package:dartz/dartz.dart';

class GetJadwalUsecase {
  Future<Either<Failure, MitraModel>> getJadwal() {
    return serviceLocator<JadwalRepository>().getJadwal();
  }
}
