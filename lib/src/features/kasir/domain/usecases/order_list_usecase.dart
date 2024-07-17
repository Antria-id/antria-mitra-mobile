import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/kasir/data/datasources/kasir_local_datasource.dart';
import 'package:antria_mitra_mobile/src/features/kasir/data/models/product_model.dart';
import 'package:dartz/dartz.dart';

class OrderListUsecase {
  Future<Either<Failure, List<ProductModel>>> getLocalProducts() {
    return serviceLocator<KasirLocalDatasource>().getAllProducts();
  }

  Future<Either<Failure, List<Map<String, dynamic>>>> getProductsInOrderList() {
    return serviceLocator<KasirLocalDatasource>().getProductsInOrderList();
  }

  Future<Either<Failure, void>> addProduct(int productId, int quantity) {
    return serviceLocator<KasirLocalDatasource>().addProductToOrderList(
      productId,
      quantity,
    );
  }

  Future<Either<Failure, void>> incrementOrderQuantity(
      int productId, int quantity) {
    return serviceLocator<KasirLocalDatasource>().incrementOrderQuantity(
      productId,
      quantity,
    );
  }

  Future<Either<Failure, void>> decrementOrderQuantity(
      int productId, int quantity) {
    return serviceLocator<KasirLocalDatasource>().decrementOrderQuantity(
      productId,
      quantity,
    );
  }

  Future<Either<Failure, void>> insertPesanan(String invoice, String payment,
      String pemesanan, bool takeaway, int mitraId) {
    return serviceLocator<KasirLocalDatasource>().insertPesanan(
      invoice,
      payment,
      pemesanan,
      takeaway,
      mitraId,
    );
  }
}
