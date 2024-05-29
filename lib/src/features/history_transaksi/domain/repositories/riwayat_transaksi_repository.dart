import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/data/models/detail_transaksi_model.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/data/models/riwayat_transaksi_response_model.dart';
import 'package:dartz/dartz.dart';

abstract class RiwayatTransaksiRepository {
  Future<Either<Failure, List<RiwayatTransaksiResponse>>> getRiwayatTransaksi();
  Future<Either<Failure, DetailTransaksiModel>> getDetailTransaksi(
      {required String invoice});
}
