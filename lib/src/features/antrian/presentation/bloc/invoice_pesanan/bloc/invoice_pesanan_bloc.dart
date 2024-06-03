import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/models/response/pesanan_invoice_response.dart';
import 'package:antria_mitra_mobile/src/features/antrian/domain/usecases/get_pesanan_invoice_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'invoice_pesanan_event.dart';
part 'invoice_pesanan_state.dart';
part 'invoice_pesanan_bloc.freezed.dart';

class InvoicePesananBloc
    extends Bloc<InvoicePesananEvent, InvoicePesananState> {
  InvoicePesananBloc() : super(const InvoicePesananInitialState()) {
    on<InvoicePesananEvent>((event, emit) async {
      emit(const InvoicePesananState.loading());
      var result = await serviceLocator<GetPesananInvoiceUsecase>()
          .getPesananByInvoice(invoice: event.invoice);
      result.fold(
        (failure) {
          emit(InvoicePesananState.error(failure.message));
        },
        (data) {
          emit(InvoicePesananState.loaded(response: data));
        },
      );
    });
  }
}
