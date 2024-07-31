import 'package:antria_mitra_mobile/src/core/utils/constant.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() {
  // Initialize dotenv before running tests
  setUp(() async {
    await dotenv.load(fileName: ".env");
  });

  test('baseUrl returns correct value', () {
    expect(APIUrl.baseUrl, dotenv.get('BASEURL'));
  });

  test('loginUserPath returns correct path', () {
    expect(APIUrl.loginUserPath, '/auth/login/mitra');
  });

  test('registerUserPath returns correct path', () {
    expect(APIUrl.registerUserPath, '/mitra/new');
  });

  test('getProductPath returns correct path for mitraId', () {
    expect(APIUrl.getProductPath(123), '/produk/mitra/123');
  });

  test('getMitraPath returns correct path for mitraId', () {
    expect(APIUrl.getMitraPath(123), '/mitra/123');
  });

  test('getAntrianPath returns correct path for mitraId', () {
    expect(APIUrl.getAntrianPath(123), '/antrian/mitra/123');
  });

  test('getKaryawanPath returns correct path for id', () {
    expect(APIUrl.getKaryawanPath(456), '/karyawan/456');
  });

  test('getPesananPath returns correct path for mitraId', () {
    expect(APIUrl.getPesananPath(123), '/pesanan/mitra/123');
  });

  test('getPesananByInvoicePath returns correct path for invoice', () {
    expect(APIUrl.getPesananByInvoicePath('INV123'), '/pesanan/INV123');
  });

  test('getUlasanPath returns correct path for mitraId', () {
    expect(APIUrl.getUlasanPath(123), '/reviews/mitra/123');
  });

  test('getupdateOrderPath returns correct path for id', () {
    expect(APIUrl.getupdateOrderPath(789), '/antrian/789');
  });

  test('insertPesanan returns correct path', () {
    expect(APIUrl.insertPesanan, '/pesanan');
  });

  test('imagePath returns correct path', () {
    expect(APIUrl.imagePath, '/image/');
  });
}
