import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/data/datasources/riwayat_transaksi_remote_datasource.dart';

import 'package:antria_mitra_mobile/src/features/history_transaksi/data/models/riwayat_transaksi_response_model.dart';
import 'package:dartz/dartz.dart';

class GetRiwayatTransaksiUsecase {
  Future<Either<Failure, List<RiwayatTransaksiResponse>>>
      getRiwayatTransaksi() {
    return serviceLocator<RiwayatTransaksiRemoteDatasource>()
        .getRiwayatTransaksi();
  }
}
