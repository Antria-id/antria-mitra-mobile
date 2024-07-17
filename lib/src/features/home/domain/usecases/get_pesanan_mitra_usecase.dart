import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/home/data/datasources/remote/home_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/home/data/models/pesanan_model.dart';
import 'package:dartz/dartz.dart';

class GetPesananMitraUsecase {
  Future<Either<Failure, List<PesananModel>>> getPesananMitra() {
    return serviceLocator<HomeRemoteDatasource>().getPesananMitra();
  }
}
