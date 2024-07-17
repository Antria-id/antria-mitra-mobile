import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/core/services/user_cache_services.dart';
import 'package:antria_mitra_mobile/src/core/utils/constant.dart';
import 'package:antria_mitra_mobile/src/core/utils/request.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/models/response/antrian_list_response_model.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/models/response/antrian_response_model.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/models/response/pesanan_invoice_response.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/models/request/status_pesanan_request.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/user_model.dart';
import 'package:dartz/dartz.dart';

abstract class AntrianRemoteDatasource {
  Future<Either<Failure, List<AntrianListModel>>> getAntrian();
  Future<Either<Failure, PesananInvoiceResponseModel>> getPesananByInvoice(
      {required String invoice});
  Future<Either<Failure, AntrianResponseModel>> updateStatusPesanan(
      {required StatusPesananRequestModel statusPesananRequestModel,
      required int id});
}

class AntrianRemoteDatasourceImpl implements AntrianRemoteDatasource {
  final Request request = serviceLocator<Request>();

  @override
  Future<Either<Failure, AntrianResponseModel>> updateStatusPesanan(
      {required StatusPesananRequestModel statusPesananRequestModel,
      required int id}) async {
    try {
      final Request request = serviceLocator<Request>();

      final response = await request.put(
        APIUrl.getupdateOrderPath(id),
        data: statusPesananRequestModel.toJson(),
      );

      if (response.statusCode == 200) {
        final AntrianResponseModel antrianResponse =
            AntrianResponseModel.fromJson(response.data);
        return Right(antrianResponse);
      }
      return Left(ConnectionFailure(response.data['message']));
    } catch (e) {
      return const Left(
        ParsingFailure('Unable to parse the response'),
      );
    }
  }

  @override
  Future<Either<Failure, PesananInvoiceResponseModel>> getPesananByInvoice(
      {required String invoice}) async {
    try {
      final response =
          await request.get(APIUrl.getPesananByInvoicePath(invoice));
      if (response.statusCode == 200) {
        final PesananInvoiceResponseModel pesananInvoiceResponseModel =
            PesananInvoiceResponseModel.fromJson(response.data);
        return Right(pesananInvoiceResponseModel);
      }
      return Left(
        ConnectionFailure(response.data['message']),
      );
    } catch (e) {
      return Left(ParsingFailure('Unable to parse the response: $e'));
    }
  }

  @override
  Future<Either<Failure, List<AntrianListModel>>> getAntrian() async {
    try {
      final UserCacheService userCacheService =
          serviceLocator<UserCacheService>();
      final UserModel? user = await userCacheService.getUser();
      if (user == null) {
        return const Left(ParsingFailure('User not found'));
      }
      final int mitraId = user.mitraId!;
      final response = await request.get(
        APIUrl.getAntrianPath(mitraId),
        data: {
          "limit": 20,
        },
      );

      if (response.statusCode == 200) {
        final dynamic responseData = response.data;
        if (responseData is List<dynamic>) {
          List<AntrianListModel> antrianList = [];

          for (var json in responseData) {
            AntrianListModel antrian = AntrianListModel.fromJson(json);
            final invoice = antrian.pesananId;
            final pesananResponse =
                await request.get(APIUrl.getPesananByInvoicePath(invoice));

            if (pesananResponse.statusCode == 200) {
              final dynamic pesananData = pesananResponse.data;
              if (pesananData is Map<String, dynamic>) {
                antrian.pesanan =
                    PesananInvoiceResponseModel.fromJson(pesananData);
              } else {
                return const Left(
                    ParsingFailure('Invalid pesanan response format'));
              }
            } else {
              return Left(ConnectionFailure(pesananResponse.data['message']));
            }
            antrianList.add(antrian);
          }

          return Right(antrianList);
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
