import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/core/services/user_cache_services.dart';
import 'package:antria_mitra_mobile/src/core/utils/constant.dart';
import 'package:antria_mitra_mobile/src/core/utils/request.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/user_model.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/request/update_karyawan_request_model.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/request/update_usaha_request.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/response/karyawan_model.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/response/ulasan_response.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/response/usaha_response_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class ProfileUserDatasource {
  Future<Either<Failure, KaryawanModel>> getKaryawan();
  Future<Either<Failure, KaryawanModel>> updateProfileKaryawan(
      {required UpdateKaryawanRequestModel requestModel});
  Future<Either<Failure, List<UlasanResponse>>> getUlasan();
  Future<Either<Failure, UsahaResponseModel>> getInformasiUsaha();
  Future<Either<Failure, UsahaResponseModel>> updateInformasiUsaha(
      {required UpdateUsahaRequestModel requestModel});
}

class ProfileUserDatasourceImpl extends ProfileUserDatasource {
  final Request request = serviceLocator<Request>();

  @override
  Future<Either<Failure, KaryawanModel>> getKaryawan() async {
    try {
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

  @override
  Future<Either<Failure, UsahaResponseModel>> updateInformasiUsaha(
      {required UpdateUsahaRequestModel requestModel}) async {
    try {
      final UserCacheService userCacheService =
          serviceLocator<UserCacheService>();
      final UserModel? user = await userCacheService.getUser();
      if (user == null) {
        return const Left(
          ParsingFailure('User not found'),
        );
      }
      final int mitraId = user.mitraId!;

      MultipartFile? gambarToko;
      if (requestModel.gambarToko != null) {
        gambarToko = await MultipartFile.fromFile(
          requestModel.gambarToko!,
        );
      }

      final formData = FormData.fromMap({
        'nama_toko': requestModel.namaToko,
        'deskripsi_toko': requestModel.deskripsiToko,
        'alamat': requestModel.alamat,
        'linkGmaps': requestModel.linkGmaps,
        if (gambarToko != null) 'gambar_toko': gambarToko,
      });

      final response = await request.put(
        APIUrl.getMitraPath(mitraId),
        data: formData,
      );

      if (response.statusCode == 200) {
        final UsahaResponseModel usahaResponse =
            UsahaResponseModel.fromJson(response.data);
        return Right(usahaResponse);
      }
      return Left(ConnectionFailure(response.data['message']));
    } catch (e) {
      return const Left(
        ParsingFailure('Unable to parse the response'),
      );
    }
  }

  @override
  Future<Either<Failure, UsahaResponseModel>> getInformasiUsaha() async {
    try {
      final UserCacheService userCacheService =
          serviceLocator<UserCacheService>();
      final UserModel? user = await userCacheService.getUser();
      if (user == null) {
        return const Left(
          ParsingFailure('User not found'),
        );
      }
      final int mitraId = user.mitraId!;
      final response = await request.get(APIUrl.getMitraPath(mitraId));
      if (response.statusCode == 200) {
        final UsahaResponseModel mitraModel =
            UsahaResponseModel.fromJson(response.data);
        return Right(mitraModel);
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
}
