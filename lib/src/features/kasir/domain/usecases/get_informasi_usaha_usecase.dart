import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/kasir/data/datasources/kasir_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/kasir/data/models/usaha_response_model.dart';
import 'package:dartz/dartz.dart';

class GetInformasiUsahaUsecase {
  Future<Either<Failure, UsahaResponseModel>> getInformasiUsaha() async {
    return serviceLocator<KasirRemoteDatasource>().getInformasiUsaha();
  }
}
