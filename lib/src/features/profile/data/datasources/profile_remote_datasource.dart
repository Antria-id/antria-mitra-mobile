import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/core/services/user_cache_services.dart';
import 'package:antria_mitra_mobile/src/core/utils/constant.dart';
import 'package:antria_mitra_mobile/src/core/utils/request.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/user/user_model.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/request/update_karyawan_request_model.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/response/karyawan_model.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/response/ulasan_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class ProfileUserDatasource {
  Future<Either<Failure, KaryawanModel>> getKaryawan();
  Future<Either<Failure, KaryawanModel>> updateProfileKaryawan(
      {required UpdateKaryawanRequestModel requestModel});
  Future<Either<Failure, List<UlasanResponse>>> getUlasan();
  Future<Either<Failure, void>> deleteUserFromLocalStorage();
}

class ProfileUserDatasourceImpl extends ProfileUserDatasource {
  @override
  Future<Either<Failure, void>> deleteUserFromLocalStorage() async {
    try {
      final deletionSuccess =
          await serviceLocator<UserCacheService>().deleteUser();
      if (deletionSuccess) {
        return const Right(null);
      } else {
        return const Left(
          LocalDatabaseQueryFailure(
            'Unable to delete user from the shared prefs',
          ),
        );
      }
    } catch (e, stackTrace) {
      return Left(ParsingFailure(
          'Parsing failure occurred in HomeLocalUserDatasourceImpl: $e\nStack trace: $stackTrace'));
    }
  }

  @override
  Future<Either<Failure, KaryawanModel>> getKaryawan() async {
    try {
      final Request request = serviceLocator<Request>();
      final UserCacheService userCacheService =
          serviceLocator<UserCacheService>();
      final UserModel? user = await userCacheService.getUser();
      if (user == null) {
        return const Left(
          ParsingFailure('User not found'),
        );
      }
      final int id = user.sub!;
      final response = await request.get(APIUrl.getKaryawanPath(id));
      if (response.statusCode == 200) {
        final KaryawanModel karyawanResponse =
            KaryawanModel.fromJson(response.data);
        return Right(
          karyawanResponse,
        );
      }
      return Left(
        ConnectionFailure(response.data['message']),
      );
    } catch (e) {
      return const Left(
        ParsingFailure('Unable to parse the response'),
      );
    }
  }

  @override
  Future<Either<Failure, KaryawanModel>> updateProfileKaryawan(
      {required UpdateKaryawanRequestModel requestModel}) async {
    try {
      final Request request = serviceLocator<Request>();
      final UserCacheService userCacheService =
          serviceLocator<UserCacheService>();
      final UserModel? user = await userCacheService.getUser();
      if (user == null) {
        return const Left(
          ParsingFailure('User not found'),
        );
      }
      final int id = user.sub!;

      MultipartFile? profilePicture;
      if (requestModel.profilePicture != null) {
        profilePicture = await MultipartFile.fromFile(
          requestModel.profilePicture!,
        );
      }

      final formData = FormData.fromMap({
        'username': requestModel.username,
        'email': requestModel.email,
        'nama': requestModel.nama,
        'alamat': requestModel.alamat,
        'handphone': requestModel.handphone,
        if (profilePicture != null) 'profile_picture': profilePicture,
      });

      final response = await request.put(
        APIUrl.getKaryawanPath(id),
        data: formData,
      );

      if (response.statusCode == 200) {
        final KaryawanModel karyawanResponse =
            KaryawanModel.fromJson(response.data);
        return Right(karyawanResponse);
      }
      return Left(ConnectionFailure(response.data['message']));
    } catch (e) {
      return const Left(
        ParsingFailure('Unable to parse the response'),
      );
    }
  }

  @override
  Future<Either<Failure, List<UlasanResponse>>> getUlasan() async {
    try {
      final Request request = serviceLocator<Request>();
      final UserCacheService userCacheService =
          serviceLocator<UserCacheService>();
      final UserModel? user = await userCacheService.getUser();
      if (user == null) {
        return const Left(ParsingFailure('User not found'));
      }
      final int mitraId = user.mitraId!;
      final response = await request.get(APIUrl.getUlasanPath(mitraId));

      if (response.statusCode == 200) {
        final dynamic responseData = response.data;
        if (responseData is List<dynamic>) {
          final List<UlasanResponse> ulasan = responseData
              .map((json) => UlasanResponse.fromJson(json))
              .toList();
          return Right(ulasan);
        } else {
          return const Left(ParsingFailure('Invalid response format'));
        }
      } else {
        return Left(ConnectionFailure(response.data['message']));
      }
    } catch (e) {
      return Left(ParsingFailure('Unable to parse the response: $e'));
    }
  }
}
