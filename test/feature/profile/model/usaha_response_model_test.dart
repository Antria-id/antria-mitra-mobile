import 'package:flutter_test/flutter_test.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/response/usaha_response_model.dart';

void main() {
  // Sample JSON data
  final tUsahaResponseModelJson = {
    "nama_toko": "Toko XYZ",
    "deskripsi_toko": "Deskripsi Toko XYZ",
    "alamat": "Alamat Toko XYZ",
    "linkGmaps": "https://maps.google.com",
    "gambar_toko": "gambar_toko.jpg",
  };

  final tUsahaResponseModel = UsahaResponseModel(
    namaToko: "Toko XYZ",
    deskripsiToko: "Deskripsi Toko XYZ",
    alamat: "Alamat Toko XYZ",
    linkGmaps: "https://maps.google.com",
    gambarToko: "gambar_toko.jpg",
  );

  group('UsahaResponseModel', () {
    test('should correctly serialize to JSON', () {
      // Act
      final result = tUsahaResponseModel.toJson();

      // Assert
      expect(result, tUsahaResponseModelJson);
    });

    test('should correctly deserialize from JSON', () {
      // Act
      final result = UsahaResponseModel.fromJson(tUsahaResponseModelJson);

      // Assert
      expect(result, tUsahaResponseModel);
    });

    test('should have correct equality check', () {
      // Act
      final result1 = UsahaResponseModel.fromJson(tUsahaResponseModelJson);
      final result2 = UsahaResponseModel(
        namaToko: "Toko XYZ",
        deskripsiToko: "Deskripsi Toko XYZ",
        alamat: "Alamat Toko XYZ",
        linkGmaps: "https://maps.google.com",
        gambarToko: "gambar_toko.jpg",
      );

      // Assert
      expect(result1, equals(result2));
    });

    test('should have correct copyWith method', () {
      // Arrange
      final updatedModel = tUsahaResponseModel.copyWith(namaToko: "Toko ABC");

      // Assert
      expect(updatedModel.namaToko, "Toko ABC");
      expect(updatedModel.deskripsiToko, tUsahaResponseModel.deskripsiToko);
      expect(updatedModel.alamat, tUsahaResponseModel.alamat);
      expect(updatedModel.linkGmaps, tUsahaResponseModel.linkGmaps);
      expect(updatedModel.gambarToko, tUsahaResponseModel.gambarToko);
    });
  });
}
