import 'package:antria_mitra_mobile/src/features/history_transaksi/data/models/riwayat_transaksi_response_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixture/fixture.dart';

void main() {
  final List<RiwayatTransaksiResponse> riwayatTransaksi = [
    RiwayatTransaksiResponse(
      invoice: 'INVC1716358907',
      payment: 'EWALLET',
      pemesanan: 'ONLINE',
      takeaway: false,
      status: "SUCCESS",
      pelangganId: 1,
      mitraId: 1,
      antrianId: null,
      createdAt: DateTime.parse("2024-05-22T06:21:47.172Z"),
      updatedAt: DateTime.parse("2024-05-30T10:03:26.242Z"),
      oderlist: [
        Oderlist(
          id: 17,
          quantity: 5,
          note: "tidak dingin",
          produkId: 1,
          pesananId: 'INVC1716358907',
          produk: Produk(
            id: 1,
            namaProduk: 'cocacola',
            deskripsiProduk: "MInuman cocacola",
            harga: 5000,
            gambar: "",
            kuantitas: 10,
            mitraId: 1,
            createdAt: DateTime.parse('2024-05-06T09:25:39.748Z'),
            updatedAt: DateTime.parse('2024-05-06T09:25:39.748Z'),
          ),
        ),
        Oderlist(
          id: 18,
          quantity: 10,
          note: "dingin",
          produkId: 2,
          pesananId: 'INVC1716358907',
          produk: Produk(
            id: 2,
            namaProduk: "MIE AYAM",
            deskripsiProduk: "MAKANAN",
            harga: 20000,
            gambar: "",
            kuantitas: 10,
            mitraId: 1,
            createdAt: DateTime.parse('2024-05-06T09:26:43.411Z'),
            updatedAt: DateTime.parse('2024-05-22T06:46:03.963Z'),
          ),
        ),
      ],
      pelanggan: Pelanggan(
        id: 1,
        username: 'hibikisoviena',
        password:
            "\$2b\$10\$B6DsN48I0AVEzoLFYd2Kc.SX89dn6S1ox3Qd8Y2pTwEVjYK6Xr2ia",
        email: "hibiki@verni.yt",
        emailVerified: false,
        profilePicture: "05370079-67dc-4c3f-8c50-5b6d440b2acd.jpg",
        nama: "hibiki veriny",
        handphone: "",
        alamat: "",
        wallet: 0,
        createdAt: DateTime.parse('2024-05-01T07:27:04.132Z'),
        updatedAt: DateTime.parse('2024-05-15T07:48:14.613Z'),
      ),
      antrian: Antrian(
          id: 8,
          estimasi: 30,
          orderstatus: "WAITING",
          pesananId: "INVC1716358907",
          createdAt: DateTime.parse('2024-05-30T10:03:26.238Z'),
          updatedAt: DateTime.parse('2024-05-30T10:03:26.238Z')),
    ),
    RiwayatTransaksiResponse(
      invoice: 'INVC1716358907',
      payment: 'EWALLET',
      pemesanan: 'ONLINE',
      takeaway: false,
      status: "SUCCESS",
      pelangganId: 1,
      mitraId: 1,
      antrianId: null,
      createdAt: DateTime.parse("2024-05-22T06:21:47.172Z"),
      updatedAt: DateTime.parse("2024-05-30T10:03:26.242Z"),
      oderlist: [
        Oderlist(
          id: 17,
          quantity: 5,
          note: "tidak dingin",
          produkId: 1,
          pesananId: 'INVC1716358907',
          produk: Produk(
            id: 1,
            namaProduk: 'cocacola',
            deskripsiProduk: "MInuman cocacola",
            harga: 5000,
            gambar: "",
            kuantitas: 10,
            mitraId: 1,
            createdAt: DateTime.parse('2024-05-06T09:25:39.748Z'),
            updatedAt: DateTime.parse('2024-05-06T09:25:39.748Z'),
          ),
        ),
        Oderlist(
          id: 18,
          quantity: 10,
          note: "dingin",
          produkId: 2,
          pesananId: 'INVC1716358907',
          produk: Produk(
            id: 2,
            namaProduk: "MIE AYAM",
            deskripsiProduk: "MAKANAN",
            harga: 20000,
            gambar: "",
            kuantitas: 10,
            mitraId: 1,
            createdAt: DateTime.parse('2024-05-06T09:26:43.411Z'),
            updatedAt: DateTime.parse('2024-05-22T06:46:03.963Z'),
          ),
        ),
      ],
      pelanggan: Pelanggan(
        id: 1,
        username: 'hibikisoviena',
        password:
            "\$2b\$10\$B6DsN48I0AVEzoLFYd2Kc.SX89dn6S1ox3Qd8Y2pTwEVjYK6Xr2ia",
        email: "hibiki@verni.yt",
        emailVerified: false,
        profilePicture: "05370079-67dc-4c3f-8c50-5b6d440b2acd.jpg",
        nama: "hibiki veriny",
        handphone: "",
        alamat: "",
        wallet: 0,
        createdAt: DateTime.parse('2024-05-01T07:27:04.132Z'),
        updatedAt: DateTime.parse('2024-05-15T07:48:14.613Z'),
      ),
      antrian: Antrian(
        id: 8,
        estimasi: 30,
        orderstatus: "WAITING",
        pesananId: "INVC1716358907",
        createdAt: DateTime.parse('2024-05-30T10:03:26.238Z'),
        updatedAt: DateTime.parse('2024-05-30T10:03:26.238Z'),
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
          final jsonData = fixture('list_riwayat_transaksi_response.json');
          final List<RiwayatTransaksiResponse> riwayatTransaksiJson =
              riwayatTransaksiResponseFromJson(jsonData);
          // assert
          expect(riwayatTransaksiJson, riwayatTransaksi);
        },
      );

      test(
        'toJson should return a list of json strings ',
        () {
          // act
          final List<Map<String, dynamic>> jsonDataList =
              riwayatTransaksi.map((model) => model.toJson()).toList();

          // assert
          final List<Map<String, dynamic>> expectedResponse = [
            {
              "invoice": "INVC1716358907",
              "payment": "EWALLET",
              "pemesanan": "ONLINE",
              "takeaway": false,
              "status": "SUCCESS",
              "pelangganId": 1,
              "mitraId": 1,
              "antrianId": null,
              "created_at": "2024-05-22T06:21:47.172Z",
              "updated_at": "2024-05-30T10:03:26.242Z",
              "oderlist": [
                {
                  "id": 17,
                  "quantity": 5,
                  "note": "tidak dingin",
                  "produkId": 1,
                  "pesananId": "INVC1716358907",
                  "produk": {
                    "id": 1,
                    "nama_produk": "cocacola",
                    "deskripsi_produk": "MInuman cocacola",
                    "harga": 5000,
                    "gambar": "",
                    "kuantitas": 10,
                    "mitraId": 1,
                    "created_at": "2024-05-06T09:25:39.748Z",
                    "updated_at": "2024-05-06T09:25:39.748Z"
                  }
                },
                {
                  "id": 18,
                  "quantity": 10,
                  "note": "dingin",
                  "produkId": 2,
                  "pesananId": "INVC1716358907",
                  "produk": {
                    "id": 2,
                    "nama_produk": "MIE AYAM",
                    "deskripsi_produk": "MAKANAN",
                    "harga": 20000,
                    "gambar": "",
                    "kuantitas": 10,
                    "mitraId": 1,
                    "created_at": "2024-05-06T09:26:43.411Z",
                    "updated_at": "2024-05-22T06:46:03.963Z"
                  }
                }
              ],
              "pelanggan": {
                "id": 1,
                "username": "hibikisoviena",
                "password":
                    "\$2b\$10\$B6DsN48I0AVEzoLFYd2Kc.SX89dn6S1ox3Qd8Y2pTwEVjYK6Xr2ia",
                "email": "hibiki@verni.yt",
                "emailVerified": false,
                "profile_picture": "05370079-67dc-4c3f-8c50-5b6d440b2acd.jpg",
                "nama": "hibiki veriny",
                "handphone": "",
                "alamat": "",
                "wallet": 0,
                "created_at": "2024-05-01T07:27:04.132Z",
                "updated_at": "2024-05-15T07:48:14.613Z"
              },
              "antrian": {
                "id": 8,
                "estimasi": 30,
                "orderstatus": "WAITING",
                "pesananId": "INVC1716358907",
                "created_at": "2024-05-30T10:03:26.238Z",
                "updated_at": "2024-05-30T10:03:26.238Z"
              }
            },
            {
              "invoice": "INVC1716358907",
              "payment": "EWALLET",
              "pemesanan": "ONLINE",
              "takeaway": false,
              "status": "SUCCESS",
              "pelangganId": 1,
              "mitraId": 1,
              "antrianId": null,
              "created_at": "2024-05-22T06:21:47.172Z",
              "updated_at": "2024-05-30T10:03:26.242Z",
              "oderlist": [
                {
                  "id": 17,
                  "quantity": 5,
                  "note": "tidak dingin",
                  "produkId": 1,
                  "pesananId": "INVC1716358907",
                  "produk": {
                    "id": 1,
                    "nama_produk": "cocacola",
                    "deskripsi_produk": "MInuman cocacola",
                    "harga": 5000,
                    "gambar": "",
                    "kuantitas": 10,
                    "mitraId": 1,
                    "created_at": "2024-05-06T09:25:39.748Z",
                    "updated_at": "2024-05-06T09:25:39.748Z"
                  }
                },
                {
                  "id": 18,
                  "quantity": 10,
                  "note": "dingin",
                  "produkId": 2,
                  "pesananId": "INVC1716358907",
                  "produk": {
                    "id": 2,
                    "nama_produk": "MIE AYAM",
                    "deskripsi_produk": "MAKANAN",
                    "harga": 20000,
                    "gambar": "",
                    "kuantitas": 10,
                    "mitraId": 1,
                    "created_at": "2024-05-06T09:26:43.411Z",
                    "updated_at": "2024-05-22T06:46:03.963Z"
                  }
                }
              ],
              "pelanggan": {
                "id": 1,
                "username": "hibikisoviena",
                "password":
                    "\$2b\$10\$B6DsN48I0AVEzoLFYd2Kc.SX89dn6S1ox3Qd8Y2pTwEVjYK6Xr2ia",
                "email": "hibiki@verni.yt",
                "emailVerified": false,
                "profile_picture": "05370079-67dc-4c3f-8c50-5b6d440b2acd.jpg",
                "nama": "hibiki veriny",
                "handphone": "",
                "alamat": "",
                "wallet": 0,
                "created_at": "2024-05-01T07:27:04.132Z",
                "updated_at": "2024-05-15T07:48:14.613Z"
              },
              "antrian": {
                "id": 8,
                "estimasi": 30,
                "orderstatus": "WAITING",
                "pesananId": "INVC1716358907",
                "created_at": "2024-05-30T10:03:26.238Z",
                "updated_at": "2024-05-30T10:03:26.238Z"
              }
            }
          ];

          expect(jsonDataList, expectedResponse);
        },
      );
    },
  );
}
