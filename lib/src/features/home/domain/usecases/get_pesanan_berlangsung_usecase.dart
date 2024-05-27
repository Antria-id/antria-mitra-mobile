import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/home/data/datasources/remote/home_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/home/data/models/pesanan_berlangsung/pesanan_berlangsung_model.dart';
import 'package:dartz/dartz.dart';

class GetPesananBerlangsungUsecase {
  Future<Either<Failure, List<PesananBerlangsungModel>>>
      getPesananBerlangsung() {
    return serviceLocator<HomeRemoteDatasource>().getPesananBerlangsung();
  }
}
