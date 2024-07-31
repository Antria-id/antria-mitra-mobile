import 'package:flutter_dotenv/flutter_dotenv.dart';

class APIUrl {
  static String get baseUrl => dotenv.get('BASEURL');
  static String get loginUserPath => '/auth/login/mitra';
  static String get registerUserPath => '/mitra/new';
  static String getProductPath(int mitraId) => '/produk/mitra/$mitraId';
  static String getMitraPath(int mitraId) => '/mitra/$mitraId';
  static String getAntrianPath(int mitraId) => '/antrian/mitra/$mitraId';
  static String getKaryawanPath(int id) => '/karyawan/$id';
  static String getPesananPath(int mitraId) => '/pesanan/mitra/$mitraId';
  static String getPesananByInvoicePath(String invoice) => '/pesanan/$invoice';
  static String getUlasanPath(int mitraId) => '/reviews/mitra/$mitraId';
  static String getupdateOrderPath(int id) => '/antrian/$id';
  static String get insertPesanan => '/pesanan';
  static String get imagePath => '/image/';
}
