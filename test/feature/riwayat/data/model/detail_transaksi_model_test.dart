import 'dart:convert';

import 'package:antria_mitra_mobile/src/features/history_transaksi/data/models/detail_transaksi_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixture/fixture.dart';

void main() {
  final detailTransaksiModel = DetailTransaksiModel(
    invoice: 'INVCMI2RO21721497626',
    payment: 'EWALLET',
    status: 'SUCCESS',
    pelangganId: 2,
    createdAt: DateTime.parse('2024-07-20T17:47:15.769Z'),
    updatedAt: DateTime.parse('2024-07-20T17:47:15.789Z'),
    pelanggan: Pelanggan(
      id: 2,
      username: 'rovino',
      createdAt: DateTime.parse('2024-05-01T10:35:07.243Z'),
      updatedAt: DateTime.parse('2024-07-21T14:52:52.965Z'),
    ),
    oderlist: [
      Oderlist(
        id: 240,
        quantity: 1,
        produkId: 65,
        pesananId: 'INVCMI2RO21721497626',
        produk: Produk(
          id: 65,
          namaProduk: 'GUDEG',
          harga: 24000,
          createdAt: DateTime.parse('2024-06-21T05:18:54.848Z'),
          updatedAt: DateTime.parse('2024-06-21T05:18:54.848Z'),
        ),
      ),
      Oderlist(
        id: 241,
        quantity: 1,
        produkId: 64,
        pesananId: 'INVCMI2RO21721497626',
        produk: Produk(
          id: 64,
          namaProduk: 'MIE AYAM',
          harga: 25000,
          createdAt: DateTime.parse('2024-06-21T05:09:21.866Z'),
          updatedAt: DateTime.parse('2024-07-17T13:49:21.780Z'),
        ),
      ),
    ],
  );
  group(
    'json serialization ',
    () {
      test(
        'fromJson should return LoginRequestModel object ',
        () {
          //arrange
          final jsonData = fixture('detail_transaksi.json');
          //act
          final detailTransaksiJson =
              DetailTransaksiModel.fromJson(jsonDecode(jsonData));
          // assert
          expect(detailTransaksiModel, detailTransaksiJson);
        },
      );
      test(
        'toJson should return json string ',
        () {
          //act
          final jsonData = detailTransaksiModel.toJson();
          // assert
          final detailTransaksi = {
            "invoice": "INVCMI2RO21721497626",
            "payment": "EWALLET",
            "status": "SUCCESS",
            "pelangganId": 2,
            "created_at": "2024-07-20T17:47:15.769Z",
            "updated_at": "2024-07-20T17:47:15.789Z",
            "pelanggan": {
              "id": 2,
              "username": "rovino",
              "created_at": "2024-05-01T10:35:07.243Z",
              "updated_at": "2024-07-21T14:52:52.965Z"
            },
            "oderlist": [
              {
                "id": 240,
                "quantity": 1,
                "produkId": 65,
                "pesananId": "INVCMI2RO21721497626",
                "produk": {
                  "id": 65,
                  "nama_produk": "GUDEG",
                  "harga": 24000,
                  "created_at": "2024-06-21T05:18:54.848Z",
                  "updated_at": "2024-06-21T05:18:54.848Z"
                }
              },
              {
                "id": 241,
                "quantity": 1,
                "produkId": 64,
                "pesananId": "INVCMI2RO21721497626",
                "produk": {
                  "id": 64,
                  "nama_produk": "MIE AYAM",
                  "harga": 25000,
                  "created_at": "2024-06-21T05:09:21.866Z",
                  "updated_at": "2024-07-17T13:49:21.780Z"
                }
              }
            ]
          };
          expect(detailTransaksi, jsonData);
        },
      );
    },
  );
}
