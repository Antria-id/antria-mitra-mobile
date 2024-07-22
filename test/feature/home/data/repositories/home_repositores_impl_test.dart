import 'dart:convert';
import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/user_model.dart';
import 'package:antria_mitra_mobile/src/features/home/data/datasources/local/home_local_datasource.dart';
import 'package:antria_mitra_mobile/src/features/home/data/datasources/remote/home_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/home/data/models/pesanan_model.dart';
import 'package:antria_mitra_mobile/src/features/home/data/repositories/home_repository_impl.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/response/karyawan_model.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import '../../../../fixture/fixture.dart';

// Mock Classes
class MockRemoteDataSource extends Mock implements HomeRemoteDatasource {}

class MockHomeLocalDatasource extends Mock implements HomeLocalUserDatasource {}

void main() {
  late MockHomeLocalDatasource mockHomeLocalDatasource;
  late MockRemoteDataSource mockRemoteDataSource;
  late HomeRepositoryImpl homeRepositoryImpl;

  setUpAll(() {
    mockRemoteDataSource = MockRemoteDataSource();
    mockHomeLocalDatasource = MockHomeLocalDatasource();
    serviceLocator
        .registerFactory<HomeRemoteDatasource>(() => mockRemoteDataSource);
    serviceLocator.registerFactory<HomeLocalUserDatasource>(
        () => mockHomeLocalDatasource);
    homeRepositoryImpl = HomeRepositoryImpl();
  });

  tearDown(() {
    reset(mockRemoteDataSource);
    reset(mockHomeLocalDatasource);
  });

  final KaryawanModel user = KaryawanModel.fromJson(
    jsonDecode(fixture('karyawan_response.json')),
  );

  final String fixtureData = fixture('pesanan_model.json');
  final List<dynamic> jsonList = jsonDecode(fixtureData);
  final List<PesananModel> pesananList = jsonList
      .map((json) => PesananModel.fromJson(json as Map<String, dynamic>))
      .toList();

  group('getUserInfo', () {
    test(
        'should return KaryawanModel object when call to remote data source is successful',
        () async {
      // Arrange
      when(() => mockRemoteDataSource.getUserInfo()).thenAnswer(
        (_) async => Right(user),
      );

      // Act
      final response = await homeRepositoryImpl.getUserInfo();

      // Assert
      expect(response, Right(user));
      verify(() => mockRemoteDataSource.getUserInfo()).called(1);
      verifyNoMoreInteractions(mockRemoteDataSource);
    });

    test('should return Failure object when call to remote data source fails',
        () async {
      // Arrange
      when(() => mockRemoteDataSource.getUserInfo()).thenAnswer(
        (_) async => const Left(ConnectionFailure('')),
      );

      // Act
      final response = await homeRepositoryImpl.getUserInfo();

      // Assert
      expect(response, const Left(ConnectionFailure('')));
      verify(() => mockRemoteDataSource.getUserInfo()).called(1);
      verifyNoMoreInteractions(mockRemoteDataSource);
    });
  });

  group('getPesananMitra', () {
    test(
        'should return List<PesananModel> object when call to remote data source is successful',
        () async {
      // Arrange
      when(() => mockRemoteDataSource.getPesananMitra()).thenAnswer(
        (_) async => Right(pesananList),
      );

      // Act
      final response = await homeRepositoryImpl.getPesananMitra();

      // Assert
      expect(response, Right(pesananList));
      verify(() => mockRemoteDataSource.getPesananMitra()).called(1);
      verifyNoMoreInteractions(mockRemoteDataSource);
    });

    test('should return Failure object when call to remote data source fails',
        () async {
      // Arrange
      when(() => mockRemoteDataSource.getPesananMitra()).thenAnswer(
        (_) async => const Left(ConnectionFailure('')),
      );

      // Act
      final response = await homeRepositoryImpl.getPesananMitra();

      // Assert
      expect(response, const Left(ConnectionFailure('')));
      verify(() => mockRemoteDataSource.getPesananMitra()).called(1);
      verifyNoMoreInteractions(mockRemoteDataSource);
    });
  });

  group('getUserFromLocalStorage', () {
    final tUserModel = UserModel(sub: 1, username: 'John Doe');

    test(
        'should return Right(UserModel) when call to local data source is successful',
        () async {
      // Arrange
      when(() => mockHomeLocalDatasource.getUserFromLocalStorage())
          .thenAnswer((_) async => Right(tUserModel));

      // Act
      final result = await serviceLocator<HomeLocalUserDatasource>()
          .getUserFromLocalStorage();

      // Assert
      expect(result, Right(tUserModel));
      verify(() => mockHomeLocalDatasource.getUserFromLocalStorage()).called(1);
      verifyNoMoreInteractions(mockHomeLocalDatasource);
    });

    test('should return Left(Failure) when call to local data source fails',
        () async {
      // Arrange
      final tFailure = ParsingFailure('Failed to load users');
      when(() => mockHomeLocalDatasource.getUserFromLocalStorage())
          .thenAnswer((_) async => Left(tFailure));

      // Act
      final result = await serviceLocator<HomeLocalUserDatasource>()
          .getUserFromLocalStorage();

      // Assert
      expect(result, Left(tFailure));
      verify(() => mockHomeLocalDatasource.getUserFromLocalStorage()).called(1);
      verifyNoMoreInteractions(mockHomeLocalDatasource);
    });
  });
}
