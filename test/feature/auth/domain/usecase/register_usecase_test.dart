import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';
import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/request/register_request_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/register_reponse_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:antria_mitra_mobile/src/features/auth/domain/usecases/register_usecase.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late MockAuthRepository mockAuthRepository;
  late RegisterUsecase registerUsecase;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    registerUsecase = RegisterUsecase();

    // Register the mock in the service locator
    serviceLocator.registerSingleton<AuthRepository>(mockAuthRepository);
  });

  tearDown(() {
    serviceLocator.reset();
  });

  final tRegisterRequest = RegisterRequest(
    mitraData: MitraData(
      namaToko: "Sharp",
      deskripsiToko: "Toko Sharp",
      alamat: "Japan",
      hariBuka: "senin,selasa,rabu",
      jamBuka: "08:00",
      jamTutup: "22:00",
    ),
    karyawanData: KaryawanData(
      username: "sharp",
      password: "sharp11223344",
      email: "sharp@verni.yt",
      profilePicture: "",
      nama: "sharp",
      handphone: "123456789",
      alamat: "123 Main Street",
      isOwner: true,
    ),
  );
  final tRegisterResponse = RegisterResponse(
    mitra: Mitra(
      id: 9,
      namaToko: "Sharp",
      deskripsiToko: "Toko Sharp",
      alamat: "Japan",
      gambarToko: "",
      hariBuka: "senin,selasa,rabu",
      jamBuka: "08:00",
      jamTutup: "22:00",
      createdAt: DateTime.parse("2024-05-08T06:26:41.440Z"),
      updatedAt: DateTime.parse("2024-05-08T06:26:41.440Z"),
    ),
    karyawan: Karyawan(
      id: 10,
      username: "sharp",
      password:
          "\$2b\$10\$7T1SmhYNwprjpMXCPjbdBuL2Ab/aLzgu1YGaWfPz2ek14J.7eO9oK",
      email: "sharp@verni.yt",
      profilePicture: "",
      nama: "sharp",
      handphone: "123456789",
      alamat: "123 Main Street",
      isOwner: true,
      mitraId: 9,
      createdAt: DateTime.parse("2024-05-08T06:26:41.445Z"),
      updatedAt: DateTime.parse("2024-05-08T06:26:41.445Z"),
    ),
  );

  test(
      'should return Right with RegisterResponse when registration is successful',
      () async {
    // Arrange
    when(() => mockAuthRepository.register(requestUser: tRegisterRequest))
        .thenAnswer((_) async => Right(tRegisterResponse));

    // Act
    final result = await registerUsecase.call(tRegisterRequest);

    // Assert
    expect(result, Right(tRegisterResponse));
    verify(() => mockAuthRepository.register(requestUser: tRegisterRequest))
        .called(1);
  });

  test('should return Left with Failure when registration is unsuccessful',
      () async {
    // Arrange
    final tFailure = ParsingFailure('Failed Register');
    when(() => mockAuthRepository.register(requestUser: tRegisterRequest))
        .thenAnswer((_) async => Left(tFailure));

    // Act
    final result = await registerUsecase.call(tRegisterRequest);

    // Assert
    expect(result, Left(tFailure));
    verify(() => mockAuthRepository.register(requestUser: tRegisterRequest))
        .called(1);
  });
}
