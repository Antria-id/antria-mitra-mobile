import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/kasir/data/datasources/kasir_local_datasource.dart';
import 'package:antria_mitra_mobile/src/features/kasir/data/datasources/kasir_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/kasir/data/models/product_model.dart';
import 'package:antria_mitra_mobile/src/features/kasir/domain/repositories/kasir_repository.dart';
import 'package:dartz/dartz.dart';

class KasirRepositoryImpl extends KasirRepository {
  @override
  Future<Either<Failure, List<ProductModel>>> getProducts() async {
    final localResult =
        await serviceLocator<KasirLocalDatasource>().getAllProducts();
    return localResult.fold(
      (failure) async {
        final remoteResult =
            await serviceLocator<KasirRemoteDatasource>().getProduct();
        return remoteResult.fold(
          (remoteFailure) => Left(remoteFailure),
          (products) async {
            await serviceLocator<KasirLocalDatasource>().getAllProducts();
            return Right(products);
          },
        );
      },
      (products) => Right(products),
    );
  }

  @override
  Future<Either<Failure, void>> addProductToOrderList(
      int productId, int quantity) async {
    try {
      await serviceLocator<KasirLocalDatasource>()
          .addProductToOrderList(productId, quantity);
      return const Right(null);
    } catch (e) {
      return Left(
          LocalDatabaseQueryFailure('Unable to add product to order list: $e'));
    }
  }

  @override
  Future<Either<Failure, List<Map<String, dynamic>>>>
      getProductsInOrderList() async {
    try {
      final result =
          await serviceLocator<KasirLocalDatasource>().getProductsInOrderList();
      return result.fold(
        (failure) => Left(failure),
        (products) => Right(products),
      );
    } catch (e) {
      return Left(
        LocalDatabaseQueryFailure(
            'Unable to retrieve products in order list: $e'),
      );
    }
  }

  @override
  Future<Either<Failure, void>> decrementOrderQuantity(
      int productId, int quantity) async {
    try {
      final result = await serviceLocator<KasirLocalDatasource>()
          .decrementOrderQuantity(productId, quantity);
      return result.fold(
        (failure) => Left(failure),
        (_) => const Right(null),
      );
    } catch (e) {
      return Left(
          LocalDatabaseQueryFailure('Unable to decrement order quantity: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> incrementOrderQuantity(
      int productId, int quantity) async {
    try {
      final result = await serviceLocator<KasirLocalDatasource>()
          .incrementOrderQuantity(productId, quantity);
      return result.fold(
        (failure) => Left(failure),
        (_) => const Right(null),
      );
    } catch (e) {
      return Left(
          LocalDatabaseQueryFailure('Unable to increment order quantity: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> insertPesanan(String invoice, String payment,
      String pemesanan, bool takeaway, int mitraId) async {
    try {
      final result = await serviceLocator<KasirLocalDatasource>().insertPesanan(
        invoice,
        payment,
        pemesanan,
        takeaway,
        mitraId,
      );
      return result.fold(
        (failure) => Left(failure),
        (_) => const Right(null),
      );
    } catch (e) {
      return Left(
          LocalDatabaseQueryFailure('Unable to increment order quantity: $e'));
    }
  }
}
