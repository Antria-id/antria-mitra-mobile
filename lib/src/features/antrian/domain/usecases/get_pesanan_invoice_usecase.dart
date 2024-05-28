import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/datasources/pesanan_remote_datasource.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/models/response/pesanan_invoice_response.dart';
import 'package:dartz/dartz.dart';

class GetPesananInvoiceUsecase {
  Future<Either<Failure, PesananInvoiceResponseModel>> getPesananByInvoice(
      {required String invoice}) {
    return serviceLocator<PesananRemoteDatasource>()
        .getPesananByInvoice(invoice: invoice);
  }
}
