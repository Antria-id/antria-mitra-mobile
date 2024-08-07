import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/user_model.dart';
import 'package:antria_mitra_mobile/src/features/home/data/models/pesanan_model.dart';
import 'package:antria_mitra_mobile/src/features/home/data/models/stataus_usaha_request_model.dart';
import 'package:antria_mitra_mobile/src/features/home/data/models/status_usaha_model.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/response/karyawan_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepository {
  Future<Either<Failure, UserModel>> getUserFromLocalStorage();
  Future<Either<Failure, List<PesananModel>>> getPesananMitra();
  Future<Either<Failure, KaryawanModel>> getUserInfo();
  Future<Either<Failure, StatusUsahaModel>> getStatusUsaha();
  Future<Either<Failure, StatusUsahaModel>> updateStatusUsaha(
      {required StatusUsahaRequest requestModel});
}
