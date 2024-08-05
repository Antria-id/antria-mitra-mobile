import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/request/update_karyawan_request_model.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/response/karyawan_model.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/response/ulasan_response.dart';
import 'package:dartz/dartz.dart';

abstract class ProfileRepository {
  Future<Either<Failure, KaryawanModel>> getKaryawan();
  Future<Either<Failure, KaryawanModel>> updateProfileKaryawan(
      {required UpdateKaryawanRequestModel requestModel});

  Future<Either<Failure, List<UlasanResponse>>> getUlasan();
}
