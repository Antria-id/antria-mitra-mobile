import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/user_model.dart';
import 'package:antria_mitra_mobile/src/features/home/data/models/pesanan_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepository {
  Future<Either<Failure, UserModel>> getUserFromLocalStorage();
  Future<Either<Failure, List<PesananModel>>> getPesananMitra();
}
