import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';
import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/kasir/data/datasources/kasir_local_datasource.dart';
import 'package:antria_mitra_mobile/src/features/kasir/data/models/product_model.dart';
import 'package:antria_mitra_mobile/src/features/kasir/domain/usecases/order_list_usecase.dart';

class MockKasirLocalDatasource extends Mock implements KasirLocalDatasource {}

void main() {
  late OrderListUsecase orderListUsecase;
  late MockKasirLocalDatasource mockKasirLocalDatasource;

  setUp(() {
    mockKasirLocalDatasource = MockKasirLocalDatasource();
    orderListUsecase = OrderListUsecase();
    serviceLocator
        .registerSingleton<KasirLocalDatasource>(mockKasirLocalDatasource);
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
  final tProductMapList = [
    {
      'id': 1,
      'nama_produk': 'Product A',
      'deskripsi_produk': 'Description A',
      'harga': 1000,
      'gambar': 'image_url',
      'kuantitas': 10,
      'mitraId': 1,
      'created_at': '2024-01-01T00:00:00.000Z',
      'updated_at': '2024-01-02T00:00:00.000Z'
    }
  ];

  test('should return list of products from local datasource', () async {
    // Arrange
    when(() => mockKasirLocalDatasource.getAllProducts())
        .thenAnswer((_) async => Right(tProductList));

    // Act
    final result = await orderListUsecase.getLocalProducts();

    // Assert
    expect(result, Right(tProductList));
    verify(() => mockKasirLocalDatasource.getAllProducts()).called(1);
    verifyNoMoreInteractions(mockKasirLocalDatasource);
  });

  test('should return list of products in order list from local datasource',
      () async {
    // Arrange
    when(() => mockKasirLocalDatasource.getProductsInOrderList())
        .thenAnswer((_) async => Right(tProductMapList));

    // Act
    final result = await orderListUsecase.getProductsInOrderList();

    // Assert
    expect(result, Right(tProductMapList));
    verify(() => mockKasirLocalDatasource.getProductsInOrderList()).called(1);
    verifyNoMoreInteractions(mockKasirLocalDatasource);
  });

  test('should return void when adding product to order list is successful',
      () async {
    // Arrange
    when(() => mockKasirLocalDatasource.addProductToOrderList(1, 2, 'Note'))
        .thenAnswer((_) async => Right(null));

    // Act
    final result = await orderListUsecase.addProduct(1, 2, 'Note');

    // Assert
    expect(result, Right(null));
    verify(() => mockKasirLocalDatasource.addProductToOrderList(1, 2, 'Note'))
        .called(1);
    verifyNoMoreInteractions(mockKasirLocalDatasource);
  });

  test('should return void when incrementing order quantity is successful',
      () async {
    // Arrange
    when(() => mockKasirLocalDatasource.incrementOrderQuantity(1, 2))
        .thenAnswer((_) async => Right(null));

    // Act
    final result = await orderListUsecase.incrementOrderQuantity(1, 2);

    // Assert
    expect(result, Right(null));
    verify(() => mockKasirLocalDatasource.incrementOrderQuantity(1, 2))
        .called(1);
    verifyNoMoreInteractions(mockKasirLocalDatasource);
  });

  test('should return void when decrementing order quantity is successful',
      () async {
    // Arrange
    when(() => mockKasirLocalDatasource.decrementOrderQuantity(1, 2))
        .thenAnswer((_) async => Right(null));

    // Act
    final result = await orderListUsecase.decrementOrderQuantity(1, 2);

    // Assert
    expect(result, Right(null));
    verify(() => mockKasirLocalDatasource.decrementOrderQuantity(1, 2))
        .called(1);
    verifyNoMoreInteractions(mockKasirLocalDatasource);
  });

  test('should return void when inserting pesanan is successful', () async {
    // Arrange
    when(() => mockKasirLocalDatasource.insertPesanan(
            'invoice', 'payment', 'pemesanan', true, 1))
        .thenAnswer((_) async => Right(null));

    // Act
    final result = await orderListUsecase.insertPesanan(
        'invoice', 'payment', 'pemesanan', true, 1);

    // Assert
    expect(result, Right(null));
    verify(() => mockKasirLocalDatasource.insertPesanan(
        'invoice', 'payment', 'pemesanan', true, 1)).called(1);
    verifyNoMoreInteractions(mockKasirLocalDatasource);
  });

  test('should return void when adding note is successful', () async {
    // Arrange
    when(() => mockKasirLocalDatasource.addNote(1, 'note'))
        .thenAnswer((_) async => Right(null));

    // Act
    final result = await orderListUsecase.addNote(1, 'note');

    // Assert
    expect(result, Right(null));
    verify(() => mockKasirLocalDatasource.addNote(1, 'note')).called(1);
    verifyNoMoreInteractions(mockKasirLocalDatasource);
  });

  test('should return Failure when getLocalProducts fails', () async {
    // Arrange
    final tFailure = ParsingFailure('Error');

    when(() => mockKasirLocalDatasource.getAllProducts())
        .thenAnswer((_) async => Left(tFailure));

    // Act
    final result = await orderListUsecase.getLocalProducts();

    // Assert
    expect(result, Left(tFailure));
    verify(() => mockKasirLocalDatasource.getAllProducts()).called(1);
    verifyNoMoreInteractions(mockKasirLocalDatasource);
  });

  test('should return Failure when getProductsInOrderList fails', () async {
    // Arrange
    final tFailure = ParsingFailure('Error');

    when(() => mockKasirLocalDatasource.getProductsInOrderList())
        .thenAnswer((_) async => Left(tFailure));

    // Act
    final result = await orderListUsecase.getProductsInOrderList();

    // Assert
    expect(result, Left(tFailure));
    verify(() => mockKasirLocalDatasource.getProductsInOrderList()).called(1);
    verifyNoMoreInteractions(mockKasirLocalDatasource);
  });

  test('should return Failure when addProduct fails', () async {
    // Arrange
    final tFailure = ParsingFailure('Error');
    when(() => mockKasirLocalDatasource.addProductToOrderList(1, 2, 'Note'))
        .thenAnswer((_) async => Left(tFailure));

    // Act
    final result = await orderListUsecase.addProduct(1, 2, 'Note');

    // Assert
    expect(result, Left(tFailure));
    verify(() => mockKasirLocalDatasource.addProductToOrderList(1, 2, 'Note'))
        .called(1);
    verifyNoMoreInteractions(mockKasirLocalDatasource);
  });

  // Similarly, you can add tests for other methods that might fail.
}
