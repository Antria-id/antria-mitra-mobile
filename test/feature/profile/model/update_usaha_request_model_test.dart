import 'package:flutter_test/flutter_test.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/request/update_usaha_request.dart';

void main() {
  // Sample JSON data
  final tUpdateUsahaRequestModelJson = {
    "nama_toko": "Toko ABC",
    "deskripsi_toko": "Deskripsi Toko ABC",
    "alamat": "Alamat Toko ABC",
    "linkGmaps": "https://maps.google.com",
    "gambar_toko": "gambar_toko.jpg",
  };

  final tUpdateUsahaRequestModel = UpdateUsahaRequestModel(
    namaToko: "Toko ABC",
    deskripsiToko: "Deskripsi Toko ABC",
    alamat: "Alamat Toko ABC",
    linkGmaps: "https://maps.google.com",
    gambarToko: "gambar_toko.jpg",
  );

  group('UpdateUsahaRequestModel', () {
    test('should correctly serialize to JSON', () {
      // Act
      final result = tUpdateUsahaRequestModel.toJson();

      // Assert
      expect(result, tUpdateUsahaRequestModelJson);
    });

    test('should correctly deserialize from JSON', () {
      // Act
      final result =
          UpdateUsahaRequestModel.fromJson(tUpdateUsahaRequestModelJson);

      // Assert
      expect(result, tUpdateUsahaRequestModel);
    });

    test('should have correct equality check', () {
      // Act
      final result1 =
          UpdateUsahaRequestModel.fromJson(tUpdateUsahaRequestModelJson);
      final result2 = UpdateUsahaRequestModel(
        namaToko: "Toko ABC",
        deskripsiToko: "Deskripsi Toko ABC",
        alamat: "Alamat Toko ABC",
        linkGmaps: "https://maps.google.com",
        gambarToko: "gambar_toko.jpg",
      );

      // Assert
      expect(result1, equals(result2));
    });

    test('should have correct copyWith method', () {
      // Arrange
      final updatedModel =
          tUpdateUsahaRequestModel.copyWith(namaToko: "Toko XYZ");

      // Assert
      expect(updatedModel.namaToko, "Toko XYZ");
      expect(
          updatedModel.deskripsiToko, tUpdateUsahaRequestModel.deskripsiToko);
      expect(updatedModel.alamat, tUpdateUsahaRequestModel.alamat);
      expect(updatedModel.linkGmaps, tUpdateUsahaRequestModel.linkGmaps);
      expect(updatedModel.gambarToko, tUpdateUsahaRequestModel.gambarToko);
    });
  });
}
