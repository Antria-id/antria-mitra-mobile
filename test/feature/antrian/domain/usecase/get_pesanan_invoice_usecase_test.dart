import 'package:test/test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';
import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/models/response/pesanan_invoice_response.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/datasources/antrian_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/antrian/domain/usecases/get_pesanan_invoice_usecase.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';

class MockAntrianRemoteDatasource extends Mock
    implements AntrianRemoteDatasource {}

void main() {
  late GetPesananInvoiceUsecase usecase;
  late MockAntrianRemoteDatasource mockRemoteDatasource;

  setUp(() {
    mockRemoteDatasource = MockAntrianRemoteDatasource();
    serviceLocator
        .registerFactory<AntrianRemoteDatasource>(() => mockRemoteDatasource);
    usecase = GetPesananInvoiceUsecase();
  });

  tearDown(() {
    reset(mockRemoteDatasource);
    serviceLocator.reset();
  });

  group('getPesananByInvoice', () {
    final tInvoice = 'invoice123';
    final tPesananInvoiceResponse = PesananInvoiceResponseModel();

    test(
        'should return PesananInvoiceResponseModel when the call to datasource is successful',
        () async {
      // Arrange
      when(() => mockRemoteDatasource.getPesananByInvoice(invoice: tInvoice))
          .thenAnswer((_) async => Right(tPesananInvoiceResponse));

      // Act
      final result = await usecase.getPesananByInvoice(invoice: tInvoice);

      // Assert
      expect(result, Right(tPesananInvoiceResponse));
      verify(() => mockRemoteDatasource.getPesananByInvoice(invoice: tInvoice))
          .called(1);
      verifyNoMoreInteractions(mockRemoteDatasource);
    });

    test('should return Failure when the call to datasource is unsuccessful',
        () async {
      // Arrange
      final tFailure = ParsingFailure('Error');
      when(() => mockRemoteDatasource.getPesananByInvoice(invoice: tInvoice))
          .thenAnswer((_) async => Left(tFailure));

      // Act
      final result = await usecase.getPesananByInvoice(invoice: tInvoice);

      // Assert
      expect(result, Left(tFailure));
      verify(() => mockRemoteDatasource.getPesananByInvoice(invoice: tInvoice))
          .called(1);
      verifyNoMoreInteractions(mockRemoteDatasource);
    });
  });
}
