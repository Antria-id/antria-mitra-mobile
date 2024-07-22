import 'package:test/test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';
import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/models/response/antrian_response_model.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/models/response/pesanan_invoice_response.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/models/request/status_pesanan_request.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/models/response/antrian_list_response_model.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/datasources/antrian_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/repositories/antrian_repository_impl.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';

class MockAntrianRemoteDatasource extends Mock
    implements AntrianRemoteDatasource {}

void main() {
  late AntrianRepositoryImpl repository;
  late MockAntrianRemoteDatasource mockRemoteDatasource;

  setUpAll(() {
    mockRemoteDatasource = MockAntrianRemoteDatasource();
    repository = AntrianRepositoryImpl();
    serviceLocator
        .registerFactory<AntrianRemoteDatasource>(() => mockRemoteDatasource);
  });

  tearDown(() {
    reset(mockRemoteDatasource);
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
      final result = await repository.getPesananByInvoice(invoice: tInvoice);

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
      final result = await repository.getPesananByInvoice(invoice: tInvoice);

      // Assert
      expect(result, Left(tFailure));
      verify(() => mockRemoteDatasource.getPesananByInvoice(invoice: tInvoice))
          .called(1);
      verifyNoMoreInteractions(mockRemoteDatasource);
    });
  });

  group('updateStatusPesanan', () {
    final tStatusRequest = StatusPesananRequestModel(orderstatus: "WAITING");
    final tId = 1;
    final tAntrianResponse = AntrianResponseModel(
      id: 1,
      estimasi: 30,
      orderstatus: 'WAITING',
      pesananId: 'INV123',
      createdAt: DateTime.parse("2024-07-20T10:00:00Z"),
      updatedAt: DateTime.parse("2024-07-20T10:00:00Z"),
    );

    test(
        'should return AntrianResponseModel when the call to datasource is successful',
        () async {
      // Arrange
      when(() => mockRemoteDatasource.updateStatusPesanan(
          statusPesananRequestModel: tStatusRequest,
          id: tId)).thenAnswer((_) async => Right(tAntrianResponse));

      // Act
      final result = await repository.updateStatusPesanan(
          statusPesananRequestModel: tStatusRequest, id: tId);

      // Assert
      expect(result, Right(tAntrianResponse));
      verify(() => mockRemoteDatasource.updateStatusPesanan(
          statusPesananRequestModel: tStatusRequest, id: tId)).called(1);
      verifyNoMoreInteractions(mockRemoteDatasource);
    });

    test('should return Failure when the call to datasource is unsuccessful',
        () async {
      // Arrange
      final tFailure = ParsingFailure('Error');
      when(() => mockRemoteDatasource.updateStatusPesanan(
          statusPesananRequestModel: tStatusRequest,
          id: tId)).thenAnswer((_) async => Left(tFailure));

      // Act
      final result = await repository.updateStatusPesanan(
          statusPesananRequestModel: tStatusRequest, id: tId);

      // Assert
      expect(result, Left(tFailure));
      verify(() => mockRemoteDatasource.updateStatusPesanan(
          statusPesananRequestModel: tStatusRequest, id: tId)).called(1);
      verifyNoMoreInteractions(mockRemoteDatasource);
    });
  });

  group('getAntrian', () {
    final tAntrianList = [
      AntrianListModel(
        id: 1,
        estimasi: 30,
        orderstatus: 'WAITING',
        pesananId: 'INV123',
        createdAt: DateTime.parse("2024-07-20T10:00:00Z"),
        updatedAt: DateTime.parse("2024-07-20T10:00:00Z"),
      ),
      AntrianListModel(
        id: 1,
        estimasi: 30,
        orderstatus: 'WAITING',
        pesananId: 'INV123',
        createdAt: DateTime.parse("2024-07-20T10:00:00Z"),
        updatedAt: DateTime.parse("2024-07-20T10:00:00Z"),
      )
    ]; // Use actual instances if necessary

    test(
        'should return List<AntrianListModel> when the call to datasource is successful',
        () async {
      // Arrange
      when(() => mockRemoteDatasource.getAntrian())
          .thenAnswer((_) async => Right(tAntrianList));

      // Act
      final result = await repository.getAntrian();

      // Assert
      expect(result, Right(tAntrianList));
      verify(() => mockRemoteDatasource.getAntrian()).called(1);
      verifyNoMoreInteractions(mockRemoteDatasource);
    });

    test('should return Failure when the call to datasource is unsuccessful',
        () async {
      // Arrange
      final tFailure = ParsingFailure('Error');
      when(() => mockRemoteDatasource.getAntrian())
          .thenAnswer((_) async => Left(tFailure));

      // Act
      final result = await repository.getAntrian();

      // Assert
      expect(result, Left(tFailure));
      verify(() => mockRemoteDatasource.getAntrian()).called(1);
      verifyNoMoreInteractions(mockRemoteDatasource);
    });
  });
}
