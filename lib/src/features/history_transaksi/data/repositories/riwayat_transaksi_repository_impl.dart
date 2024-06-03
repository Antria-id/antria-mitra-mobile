import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/data/datasources/riwayat_transaksi_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/data/models/detail_transaksi_model.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/data/models/riwayat_transaksi_response_model.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/domain/repositories/riwayat_transaksi_repository.dart';
import 'package:dartz/dartz.dart';

class RiwayatTransaksiRepositoryImpl extends RiwayatTransaksiRepository {
  @override
  Future<Either<Failure, List<RiwayatTransaksiResponse>>>
      getRiwayatTransaksi() {
    return serviceLocator<RiwayatTransaksiRemoteDatasource>()
        .getRiwayatTransaksi();
  }

  @override
  Future<Either<Failure, DetailTransaksiModel>> getDetailTransaksi(
      {required String invoice}) {
    return serviceLocator<RiwayatTransaksiRemoteDatasource>()
        .getDetailTransaksi(
      invoice: invoice,
    );
  }
}
