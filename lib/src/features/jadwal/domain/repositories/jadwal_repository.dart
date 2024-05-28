import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/data/models/request/mitra_request_model.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/data/models/response/mitra_model.dart';
import 'package:dartz/dartz.dart';

abstract class JadwalRepository {
  Future<Either<Failure, MitraModel>> getJadwal();
  Future<Either<Failure, MitraModel>> updateJadwalMitra(
      {required MitraRequestModel requestModel});
}
