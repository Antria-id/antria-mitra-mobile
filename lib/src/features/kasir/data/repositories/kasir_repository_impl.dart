import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/kasir/data/datasources/product_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/kasir/data/models/product_model.dart';
import 'package:antria_mitra_mobile/src/features/kasir/domain/repositories/kasir_repository.dart';
import 'package:dartz/dartz.dart';

class KasirRepositoryImpl extends KasirRepository {
  @override
  Future<Either<Failure, List<ProductModel>>> getProducts() {
    return serviceLocator<ProductRemoteDatasource>().getProduct();
  }
}
