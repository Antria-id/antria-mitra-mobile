import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/helper/database_helper.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/core/services/user_cache_services.dart';
import 'package:antria_mitra_mobile/src/core/utils/constant.dart';
import 'package:antria_mitra_mobile/src/core/utils/request.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/user_model.dart';
import 'package:antria_mitra_mobile/src/features/kasir/data/models/product_model.dart';
import 'package:dartz/dartz.dart';

abstract class KasirRemoteDatasource {
  Future<Either<Failure, List<ProductModel>>> getProduct();
}

class KasirRemoteDatasourceImpl implements KasirRemoteDatasource {
  @override
  Future<Either<Failure, List<ProductModel>>> getProduct() async {
    try {
      final Request request = serviceLocator<Request>();
      final UserCacheService userCacheService =
          serviceLocator<UserCacheService>();
      final UserModel? user = await userCacheService.getUser();
      if (user == null) {
        return const Left(ParsingFailure('User not found'));
      }
      final int mitraId = user.mitraId!;
      final response = await request.get(APIUrl.getProductPath(mitraId));

      if (response.statusCode == 200) {
        final dynamic responseData = response.data;
        if (responseData is List<dynamic>) {
          final List<ProductModel> products =
              responseData.map((json) => ProductModel.fromJson(json)).toList();
          final DatabaseHelper databaseHelper = DatabaseHelper.instance;
          for (final product in products) {
            await databaseHelper.insertProduct(product);
          }
          return Right(products);
        } else {
          return const Left(ParsingFailure('Invalid response format'));
        }
      } else {
        return Left(ConnectionFailure(response.data['message']));
      }
    } catch (e) {
      return Left(ParsingFailure('Unable to parse the response: $e'));
    }
  }
}
