import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/datasources/profile_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/request/update_karyawan_request_model.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/response/karyawan_model.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/response/ulasan_response.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/response/usaha_response_model.dart';
import 'package:antria_mitra_mobile/src/features/profile/domain/repositories/profile_repository.dart';
import 'package:dartz/dartz.dart';

class ProfileRepositoryImpl extends ProfileRepository {
  @override
  Future<Either<Failure, KaryawanModel>> getKaryawan() {
    return serviceLocator<ProfileUserDatasource>().getKaryawan();
  }

  @override
  Future<Either<Failure, KaryawanModel>> updateProfileKaryawan(
      {required UpdateKaryawanRequestModel requestModel}) {
    return serviceLocator<ProfileUserDatasource>().updateProfileKaryawan(
      requestModel: requestModel,
    );
  }

  @override
  Future<Either<Failure, List<UlasanResponse>>> getUlasan() {
    return serviceLocator<ProfileUserDatasource>().getUlasan();
  }

  @override
  Future<Either<Failure, UsahaResponseModel>> getInformasiUsaha() {
    return serviceLocator<ProfileUserDatasource>().getInformasiUsaha();
  }
}
