import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/home/data/datasources/remote/home_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/response/karyawan_model.dart';
import 'package:antria_mitra_mobile/src/features/home/domain/usecases/get_user_remote_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockHomeRemoteDatasource extends Mock implements HomeRemoteDatasource {}

void main() {
  late GetUserRemoteUsecase getUserRemoteUsecase;
  late MockHomeRemoteDatasource mockHomeRemoteDatasource;

  setUp(() {
    mockHomeRemoteDatasource = MockHomeRemoteDatasource();
    getUserRemoteUsecase = GetUserRemoteUsecase();

    // Register the mock instance with the service locator
    serviceLocator
        .registerSingleton<HomeRemoteDatasource>(mockHomeRemoteDatasource);
  });

  tearDown(() {
    serviceLocator.reset();
  });

  test('should return KaryawanModel when the call to datasource is successful',
      () async {
    // Arrange
    final tKaryawanModel = KaryawanModel(
      id: 5,
      username: 'hibikiverniy',
      password: "\2y\10\6qYvFISBtoGyDWQulhY/feKxuzvHSk6pJD3n9rsIeybX2ej0e5tsG",
      email: "hibiki2@verni.yt",
      profilePicture: "",
      nama: "hibiki verniy",
      handphone: "123456789",
      alamat: "123 Main Street",
      isOwner: false,
      mitraId: 2,
      createdAt: DateTime.parse("2024-05-07T06:15:50.268Z"),
      updatedAt: DateTime.parse("2024-05-07T06:15:50.268Z"),
    );

    when(() => mockHomeRemoteDatasource.getUserInfo())
        .thenAnswer((_) async => Right(tKaryawanModel));

    // Act
    final result = await getUserRemoteUsecase.getUser();

    // Assert
    expect(result, Right(tKaryawanModel));
    verify(() => mockHomeRemoteDatasource.getUserInfo()).called(1);
  });

  test('should return a Failure when the call to datasource is unsuccessful',
      () async {
    // Arrange
    final tFailure = ParsingFailure('Error Parse API');
    when(() => mockHomeRemoteDatasource.getUserInfo())
        .thenAnswer((_) async => Left(tFailure));

    // Act
    final result = await getUserRemoteUsecase.getUser();

    // Assert
    expect(result, Left(tFailure));
    verify(() => mockHomeRemoteDatasource.getUserInfo()).called(1);
  });
}
