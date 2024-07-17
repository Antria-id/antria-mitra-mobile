import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/datasources/antrian_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/models/response/antrian_list_response_model.dart';
import 'package:dartz/dartz.dart';

class GetAntrianUsecase {
  Future<Either<Failure, List<AntrianListModel>>> getAntrian() {
    return serviceLocator<AntrianRemoteDatasource>().getAntrian();
  }
}
