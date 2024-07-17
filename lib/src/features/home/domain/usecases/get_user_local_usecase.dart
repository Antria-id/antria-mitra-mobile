import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/user_model.dart';
import 'package:antria_mitra_mobile/src/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

class GetUserLocalUsecase {
  Future<Either<Failure, UserModel>> getUserFromLocalStorage() async {
    final response =
        await serviceLocator<HomeRepository>().getUserFromLocalStorage();
    return response;
  }
}
