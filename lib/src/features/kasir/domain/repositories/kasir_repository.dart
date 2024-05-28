import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/features/kasir/data/models/product_model.dart';
import 'package:dartz/dartz.dart';

abstract class KasirRepository {
  Future<Either<Failure, List<ProductModel>>> getProducts();
}
