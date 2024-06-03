import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/models/response/pesanan_invoice_response.dart';
import 'package:antria_mitra_mobile/src/features/antrian/domain/usecases/get_pesanan_invoice_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'invoice_pesanan_event.dart';
part 'invoice_pesanan_state.dart';

class InvoicePesananBloc
    extends Bloc<InvoicePesananEvent, InvoicePesananState> {
  InvoicePesananBloc() : super(InvoicePesananInitial()) {
    on<InvoicePesananEvent>((event, emit) async {
      if (event is InvoicePesananFetchData) {
        var result = await serviceLocator<GetPesananInvoiceUsecase>()
            .getPesananByInvoice(invoice: event.invoice);
        result.fold(
          (failure) {
            emit(InvoicePesananError(message: failure.message));
          },
          (data) {
            emit(
              InvoicePesananLoaded(
                response: data,
              ),
            );
          },
        );
      }
    });
  }
}
