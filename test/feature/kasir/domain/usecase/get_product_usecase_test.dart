import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';
import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/kasir/data/models/product_model.dart';
import 'package:antria_mitra_mobile/src/features/kasir/domain/repositories/kasir_repository.dart';
import 'package:antria_mitra_mobile/src/features/kasir/domain/usecases/get_product_usecase.dart';

class MockKasirRepository extends Mock implements KasirRepository {}

void main() {
  late GetProductUsecase getProductUsecase;
  late MockKasirRepository mockKasirRepository;

  setUp(() {
    mockKasirRepository = MockKasirRepository();
    getProductUsecase = GetProductUsecase();
    serviceLocator.registerSingleton<KasirRepository>(mockKasirRepository);
  });

  tearDown(() {
    serviceLocator.reset();
  });

  final tProductModel = ProductModel(
    id: 1,
    namaProduk: "Product A",
    deskripsiProduk: "Description A",
    harga: 1000,
    gambar: "image_url",
    kuantitas: 10,
    mitraId: 1,
    createdAt: DateTime.parse("2024-01-01T00:00:00.000Z"),
    updatedAt: DateTime.parse("2024-01-02T00:00:00.000Z"),
  );
  final tProductList = [tProductModel];

  test('should get list of products from the repository', () async {
    // arrange
    when(() => mockKasirRepository.getProducts())
        .thenAnswer((_) async => Right(tProductList));

    // act
    final result = await getProductUsecase.getProduct();

    // assert
    expect(result, Right(tProductList));
    verify(() => mockKasirRepository.getProducts()).called(1);
    verifyNoMoreInteractions(mockKasirRepository);
  });

  test('should return Failure when repository fails', () async {
    // arrange
    final tFailure = ParsingFailure('error');
    when(() => mockKasirRepository.getProducts())
        .thenAnswer((_) async => Left(tFailure));

    // act
    final result = await getProductUsecase.getProduct();

    // assert
    expect(result, Left(tFailure));
    verify(() => mockKasirRepository.getProducts()).called(1);
    verifyNoMoreInteractions(mockKasirRepository);
  });
}
