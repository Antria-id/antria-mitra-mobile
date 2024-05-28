import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/datasources/pesanan_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/models/response/pesanan_response_model.dart';
import 'package:dartz/dartz.dart';

class GetPesananUsecase {
  Future<Either<Failure, List<PesananResponseModel>>> getPesanan() {
    return serviceLocator<PesananRemoteDatasource>().getPesanan();
  }
}
