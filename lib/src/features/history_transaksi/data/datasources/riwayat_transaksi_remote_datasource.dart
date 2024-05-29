import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/core/services/user_cache_services.dart';
import 'package:antria_mitra_mobile/src/core/utils/constant.dart';
import 'package:antria_mitra_mobile/src/core/utils/request.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/user/user_model.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/data/models/detail_transaksi_model.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/data/models/riwayat_transaksi_response_model.dart';
import 'package:dartz/dartz.dart';

abstract class RiwayatTransaksiRemoteDatasource {
  Future<Either<Failure, List<RiwayatTransaksiResponse>>> getRiwayatTransaksi();
  Future<Either<Failure, DetailTransaksiModel>> getDetailTransaksi(
      {required String invoice});
}

class RiwayatTransaksiRemoteDatasourceImpl
    implements RiwayatTransaksiRemoteDatasource {
  final Request request = serviceLocator<Request>();
  @override
  Future<Either<Failure, List<RiwayatTransaksiResponse>>>
      getRiwayatTransaksi() async {
    try {
      final UserCacheService userCacheService =
          serviceLocator<UserCacheService>();
      final UserModel? user = await userCacheService.getUser();
      if (user == null) {
        return const Left(ParsingFailure('User not found'));
      }
      final int mitraId = user.mitraId!;
      final response = await request.get(APIUrl.getPesananPath(mitraId));

      if (response.statusCode == 200) {
        final dynamic responseData = response.data;
        if (responseData is List<dynamic>) {
          final List<RiwayatTransaksiResponse> pesanan = responseData
              .map((json) => RiwayatTransaksiResponse.fromJson(json))
              .toList();
          return Right(pesanan);
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
  Future<Either<Failure, DetailTransaksiModel>> getDetailTransaksi(
      {required String invoice}) async {
    try {
      final response =
          await request.get(APIUrl.getPesananByInvoicePath(invoice));
      if (response.statusCode == 200) {
        final DetailTransaksiModel detailTransaksiModel =
            DetailTransaksiModel.fromJson(response.data);
        return Right(detailTransaksiModel);
      }
      return Left(
        ConnectionFailure(response.data['message']),
      );
    } catch (e) {
      return Left(ParsingFailure('Unable to parse the response: $e'));
    }
  }
}
