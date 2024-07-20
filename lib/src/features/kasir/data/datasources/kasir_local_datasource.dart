import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/helper/database_helper.dart';
import 'package:antria_mitra_mobile/src/features/kasir/data/models/product_model.dart';
import 'package:dartz/dartz.dart';

abstract class KasirLocalDatasource {
  Future<Either<Failure, List<ProductModel>>> getAllProducts();
  Future<Either<Failure, void>> addProductToOrderList(
      int productId, int quantity, String note);
  Future<Either<Failure, List<Map<String, dynamic>>>> getProductsInOrderList();
  Future<Either<Failure, void>> incrementOrderQuantity(
      int productId, int quantity);
  Future<Either<Failure, void>> decrementOrderQuantity(
      int productId, int quantity);
  Future<Either<Failure, void>> insertPesanan(String invoice, String payment,
      String pemesanan, bool takeaway, int mitraId);
  Future<Either<Failure, void>> addNote(int id, String note);
}

class KasirLocalDatasourceImpl implements KasirLocalDatasource {
  @override
  Future<Either<Failure, List<ProductModel>>> getAllProducts() async {
    try {
      final DatabaseHelper databaseHelper = DatabaseHelper.instance;
      final result = await databaseHelper.getAllProduct();
      if (result.isNotEmpty) {
        final List<ProductModel> products = result.map<ProductModel>((json) {
          return ProductModel.fromJson(json);
        }).toList();
        return Right(products);
      } else {
        return const Left(LocalDatabaseQueryFailure('No products found'));
      }
    } catch (e) {
      return Left(LocalDatabaseQueryFailure('Unable to retrieve products: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> addProductToOrderList(
      int productId, int quantity, String note) async {
    try {
      final DatabaseHelper databaseHelper = DatabaseHelper.instance;
      final DateTime now = DateTime.now();

      // Add product to orderList
      await databaseHelper.addOrderList(
        productId,
        quantity,
        now,
        now,
        note,
      );

      return const Right(null);
    } catch (e) {
      return Left(
        LocalDatabaseQueryFailure(
          'Unable add product to orderList: $e',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<Map<String, dynamic>>>>
      getProductsInOrderList() async {
    try {
      final DatabaseHelper databaseHelper = DatabaseHelper.instance;
      final result = await databaseHelper.getProductsInOrderList();
      if (result.isNotEmpty) {
        return Right(result);
      } else {
        return const Left(
            LocalDatabaseQueryFailure('No products in order list found'));
      }
    } catch (e) {
      return Left(LocalDatabaseQueryFailure(
          'Unable to retrieve products in order list: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> incrementOrderQuantity(
      int productId, int quantity) async {
    try {
      final DatabaseHelper databaseHelper = DatabaseHelper.instance;
      await databaseHelper.incrementOrderQuantity(productId, quantity);
      return const Right(null);
    } catch (e) {
      return Left(
          LocalDatabaseQueryFailure('Unable to increment order quantity: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> decrementOrderQuantity(
      int productId, int quantity) async {
    try {
      final DatabaseHelper databaseHelper = DatabaseHelper.instance;
      await databaseHelper.decrementOrderQuantity(productId, quantity);
      return const Right(null);
    } catch (e) {
      return Left(
          LocalDatabaseQueryFailure('Unable to decrement order quantity: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> insertPesanan(String invoice, String payment,
      String pemesanan, bool takeaway, int mitraId) async {
    try {
      final DatabaseHelper databaseHelper = DatabaseHelper.instance;

      await databaseHelper.insertPesanan(
          invoice, payment, pemesanan, takeaway, mitraId);

      return const Right(null);
    } catch (e) {
      return Left(LocalDatabaseQueryFailure('Unable to insert pesanan: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> addNote(int id, String note) async {
    try {
      final DatabaseHelper databaseHelper = DatabaseHelper.instance;

      await databaseHelper.addNote(id, note);

      return const Right(null);
    } catch (e) {
      return Left(LocalDatabaseQueryFailure('Unable to insert pesanan: $e'));
    }
  }
}
