import 'package:test/test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';
import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/models/request/status_pesanan_request.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/models/response/antrian_response_model.dart';
import 'package:antria_mitra_mobile/src/features/antrian/domain/repositories/antrian_repository.dart';
import 'package:antria_mitra_mobile/src/features/antrian/domain/usecases/update_status_pesanan_usecase.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';

class MockAntrianRepository extends Mock implements AntrianRepository {}

void main() {
  late UpdateStatusPesananUsecase usecase;
  late MockAntrianRepository mockRepository;

  setUp(() {
    mockRepository = MockAntrianRepository();
    serviceLocator.registerFactory<AntrianRepository>(() => mockRepository);
    usecase = UpdateStatusPesananUsecase();
  });

  tearDown(() {
    reset(mockRepository);
    serviceLocator.reset();
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
        'should return AntrianResponseModel when the call to repository is successful',
        () async {
      // Arrange
      when(() => mockRepository.updateStatusPesanan(
          statusPesananRequestModel: tStatusRequest,
          id: tId)).thenAnswer((_) async => Right(tAntrianResponse));

      // Act
      final result = await usecase.updateStatusPesanan(
          statusPesananRequestModel: tStatusRequest, id: tId);

      // Assert
      expect(result, Right(tAntrianResponse));
      verify(() => mockRepository.updateStatusPesanan(
          statusPesananRequestModel: tStatusRequest, id: tId)).called(1);
      verifyNoMoreInteractions(mockRepository);
    });

    test('should return Failure when the call to repository is unsuccessful',
        () async {
      // Arrange
      final tFailure = ParsingFailure('Error');
      when(() => mockRepository.updateStatusPesanan(
          statusPesananRequestModel: tStatusRequest,
          id: tId)).thenAnswer((_) async => Left(tFailure));

      // Act
      final result = await usecase.updateStatusPesanan(
          statusPesananRequestModel: tStatusRequest, id: tId);

      // Assert
      expect(result, Left(tFailure));
      verify(() => mockRepository.updateStatusPesanan(
          statusPesananRequestModel: tStatusRequest, id: tId)).called(1);
      verifyNoMoreInteractions(mockRepository);
    });
  });
}
