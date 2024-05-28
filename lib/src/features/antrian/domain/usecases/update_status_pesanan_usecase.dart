import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/models/request/status_pesanan_request.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/models/response/antrian_response_model.dart';
import 'package:antria_mitra_mobile/src/features/antrian/domain/repositories/pesanan_repository.dart';
import 'package:dartz/dartz.dart';

class UpdateStatusPesananUsecase {
  Future<Either<Failure, AntrianResponseModel>> updateStatusPesanan(
      {required StatusPesananRequestModel statusPesananRequestModel,
      required int id}) async {
    final response =
        await serviceLocator<PesananRepository>().updateStatusPesanan(
      statusPesananRequestModel: statusPesananRequestModel,
      id: id,
    );
    return response;
  }
}
