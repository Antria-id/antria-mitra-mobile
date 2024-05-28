import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/kasir/data/models/product_model.dart';
import 'package:antria_mitra_mobile/src/features/kasir/domain/repositories/kasir_repository.dart';
import 'package:dartz/dartz.dart';

class GetProductUsecase {
  Future<Either<Failure, List<ProductModel>>> getProduct() {
    return serviceLocator<KasirRepository>().getProducts();
  }
}
