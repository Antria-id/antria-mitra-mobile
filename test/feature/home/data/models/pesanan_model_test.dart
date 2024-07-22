import 'package:antria_mitra_mobile/src/features/home/data/models/pesanan_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixture/fixture.dart';

void main() {
  final List<PesananModel> pesananModels = [
    PesananModel(
      invoice: 'INVCMI2RO21721497626',
      pelangganId: 2,
      mitraId: 2,
      createdAt: DateTime.parse("2024-07-20T17:47:15.769Z"),
      updatedAt: DateTime.parse("2024-07-20T17:47:15.789Z"),
      antrian: Antrian(
        id: 196,
        orderstatus: 'WAITING',
        pesananId: 'INVCMI2RO21721497626',
        createdAt: DateTime.parse("2024-07-20T17:47:15.785Z"),
        updatedAt: DateTime.parse("2024-07-20T17:47:15.785Z"),
      ),
    ),
    PesananModel(
      invoice: 'INVCMI2RO21721497626',
      pelangganId: 2,
      mitraId: 2,
      createdAt: DateTime.parse("2024-07-20T17:47:15.769Z"),
      updatedAt: DateTime.parse("2024-07-20T17:47:15.789Z"),
      antrian: Antrian(
        id: 196,
        orderstatus: 'WAITING',
        pesananId: 'INVCMI2RO21721497626',
        createdAt: DateTime.parse("2024-07-20T17:47:15.785Z"),
        updatedAt: DateTime.parse("2024-07-20T17:47:15.785Z"),
      ),
    ),
  ];

  group(
    'json serialization ',
    () {
      test(
        'fromJson should return a list of PesananModel objects ',
        () {
          // arrange
          final jsonData = fixture('pesanan_model.json');
          final List<PesananModel> pesananJsonList =
              pesananBerlangsungModelFromJson(jsonData);
          // assert
          expect(pesananJsonList, pesananModels);
        },
      );

      test(
        'toJson should return a list of json strings ',
        () {
          // act
          final List<Map<String, dynamic>> jsonDataList =
              pesananModels.map((model) => model.toJson()).toList();

          // assert
          final List<Map<String, dynamic>> expectedResponse = [
            {
              "invoice": "INVCMI2RO21721497626",
              "pelanggan_id": 2,
              "mitra_id": 2,
              "created_at": "2024-07-20T17:47:15.769Z",
              "updated_at": "2024-07-20T17:47:15.789Z",
              "antrian": {
                "id": 196,
                "orderstatus": "WAITING",
                "pesananId": "INVCMI2RO21721497626",
                "created_at": "2024-07-20T17:47:15.785Z",
                "updated_at": "2024-07-20T17:47:15.785Z"
              }
            },
            {
              "invoice": "INVCMI2RO21721497626",
              "pelanggan_id": 2,
              "mitra_id": 2,
              "created_at": "2024-07-20T17:47:15.769Z",
              "updated_at": "2024-07-20T17:47:15.789Z",
              "antrian": {
                "id": 196,
                "orderstatus": "WAITING",
                "pesananId": "INVCMI2RO21721497626",
                "created_at": "2024-07-20T17:47:15.785Z",
                "updated_at": "2024-07-20T17:47:15.785Z"
              }
            }
          ];

          expect(jsonDataList, expectedResponse);
        },
      );
    },
  );
}
