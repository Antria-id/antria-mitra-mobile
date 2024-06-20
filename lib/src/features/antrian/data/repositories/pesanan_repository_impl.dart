import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/datasources/pesanan_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/models/response/antrian_response_model.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/models/response/pesanan_invoice_response.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/models/request/status_pesanan_request.dart';
import 'package:antria_mitra_mobile/src/features/antrian/domain/repositories/pesanan_repository.dart';
import 'package:dartz/dartz.dart';

class PesananRepositoryImpl extends PesananRepository {
  @override
  Future<Either<Failure, List<PesananInvoiceResponseModel>>> getPesanan() {
    return serviceLocator<PesananRemoteDatasource>().getPesanan();
  }

  @override
  Future<Either<Failure, PesananInvoiceResponseModel>> getPesananByInvoice(
      {required String invoice}) {
    return serviceLocator<PesananRemoteDatasource>()
        .getPesananByInvoice(invoice: invoice);
  }

  @override
  Future<Either<Failure, AntrianResponseModel>> updateStatusPesanan(
      {required StatusPesananRequestModel statusPesananRequestModel,
      required int id}) {
    return serviceLocator<PesananRemoteDatasource>().updateStatusPesanan(
      statusPesananRequestModel: statusPesananRequestModel,
      id: id,
    );
  }
}
