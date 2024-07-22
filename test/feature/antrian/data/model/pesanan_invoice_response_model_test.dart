import 'dart:convert';
import 'package:antria_mitra_mobile/src/features/antrian/data/models/response/pesanan_invoice_response.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PesananInvoiceResponseModel', () {
    test('fromJson and toJson work correctly', () {
      const jsonString = '''
      {
        "invoice": "INV12345",
        "payment": "Credit Card",
        "pemesanan": "2023-07-22",
        "takeaway": true,
        "status": "Completed",
        "pelangganId": 1,
        "mitraId": 2,
        "antrianId": 3,
        "created_at": "2023-07-22T10:30:00.000Z",
        "updated_at": "2023-07-22T11:30:00.000Z",
        "pelanggan": {
          "id": 1,
          "username": "john_doe",
          "password": "password123",
          "email": "john@example.com",
          "emailVerified": true,
          "profile_picture": "http://example.com/profile.jpg",
          "nama": "John Doe",
          "handphone": "1234567890",
          "alamat": "123 Main St",
          "wallet": 100,
          "created_at": "2023-07-22T10:30:00.000Z",
          "updated_at": "2023-07-22T11:30:00.000Z"
        },
        "antrian": {
          "id": 3,
          "estimasi": 15,
          "orderstatus": "Pending",
          "pesananId": "INV12345",
          "created_at": "2023-07-22T10:30:00.000Z",
          "updated_at": "2023-07-22T11:30:00.000Z"
        },
        "oderlist": [
          {
            "id": 1,
            "quantity": 2,
            "note": "Extra spicy",
            "produkId": 1,
            "pesananId": "INV12345",
            "produk": {
              "id": 1,
              "nama_produk": "Product A",
              "deskripsi_produk": "Description A",
              "harga": 10000,
              "gambar": "http://example.com/product_a.jpg",
              "kuantitas": 50,
              "mitraId": 2,
              "created_at": "2023-07-22T10:30:00.000Z",
              "updated_at": "2023-07-22T11:30:00.000Z"
            }
          }
        ]
      }
      ''';

      final model = pesananInvoiceResponseModelFromJson(jsonString);
      final jsonOutput = pesananInvoiceResponseModelToJson(model);

      // Verify that the JSON conversion works correctly
      expect(json.decode(jsonOutput), json.decode(jsonString));
    });
  });
}
