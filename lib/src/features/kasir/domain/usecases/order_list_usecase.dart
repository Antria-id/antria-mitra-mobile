import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/kasir/data/datasources/product_local_datasource.dart';
import 'package:antria_mitra_mobile/src/features/kasir/data/models/product_model.dart';
import 'package:dartz/dartz.dart';

class OrderListUsecase {
  Future<Either<Failure, List<ProductModel>>> getLocalProducts() {
    return serviceLocator<ProductLocalDatasource>().getAllProducts();
  }

  Future<Either<Failure, List<Map<String, dynamic>>>> getProductsInOrderList() {
    return serviceLocator<ProductLocalDatasource>().getProductsInOrderList();
  }

  Future<Either<Failure, void>> addProduct(int productId, int quantity) {
    return serviceLocator<ProductLocalDatasource>().addProductToOrderList(
      productId,
      quantity,
    );
  }

  Future<Either<Failure, void>> incrementOrderQuantity(
      int productId, int quantity) {
    return serviceLocator<ProductLocalDatasource>().incrementOrderQuantity(
      productId,
      quantity,
    );
  }

  Future<Either<Failure, void>> decrementOrderQuantity(
      int productId, int quantity) {
    return serviceLocator<ProductLocalDatasource>().decrementOrderQuantity(
      productId,
      quantity,
    );
  }
}
