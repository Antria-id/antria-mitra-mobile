import 'package:test/test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';
import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/models/response/antrian_list_response_model.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/datasources/antrian_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/antrian/domain/usecases/get_antrian_usecase.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';

class MockAntrianRemoteDatasource extends Mock
    implements AntrianRemoteDatasource {}

void main() {
  late GetAntrianUsecase usecase;
  late MockAntrianRemoteDatasource mockRemoteDatasource;

  setUp(() {
    mockRemoteDatasource = MockAntrianRemoteDatasource();
    serviceLocator
        .registerFactory<AntrianRemoteDatasource>(() => mockRemoteDatasource);
    usecase = GetAntrianUsecase();
  });

  tearDown(() {
    reset(mockRemoteDatasource);
    serviceLocator.reset();
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
        id: 2,
        estimasi: 45,
        orderstatus: 'READY',
        pesananId: 'INV124',
        createdAt: DateTime.parse("2024-07-20T11:00:00Z"),
        updatedAt: DateTime.parse("2024-07-20T11:00:00Z"),
      ),
    ];

    test(
        'should return List<AntrianListModel> when the call to datasource is successful',
        () async {
      // Arrange
      when(() => mockRemoteDatasource.getAntrian())
          .thenAnswer((_) async => Right(tAntrianList));

      // Act
      final result = await usecase.getAntrian();

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
      final result = await usecase.getAntrian();

      // Assert
      expect(result, Left(tFailure));
      verify(() => mockRemoteDatasource.getAntrian()).called(1);
      verifyNoMoreInteractions(mockRemoteDatasource);
    });
  });
}
