import 'dart:convert';
import 'package:antria_mitra_mobile/src/features/kasir/data/models/product_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ProductModel', () {
    final productJson = '''
    {
      "id": 1,
      "nama_produk": "Product A",
      "deskripsi_produk": "Description A",
      "harga": 1000,
      "gambar": "image_url",
      "kuantitas": 10,
      "mitraId": 1,
      "created_at": "2024-01-01T00:00:00.000Z",
      "updated_at": "2024-01-02T00:00:00.000Z"
    }
    ''';

    final product = ProductModel(
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

    test('fromJson creates a valid ProductModel', () {
      final result = ProductModel.fromJson(json.decode(productJson));
      expect(result, product);
    });

    test('toJson returns valid JSON', () {
      final result = product.toJson();
      expect(result, json.decode(productJson));
    });

    test('equality works correctly', () {
      final product1 = ProductModel(
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
      final product2 = ProductModel(
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
      expect(product1, product2);
    });
  });
}
