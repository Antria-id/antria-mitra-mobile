part of 'invoice_pesanan_bloc.dart';

@freezed
class InvoicePesananState with _$InvoicePesananState {
  const factory InvoicePesananState.initial() = InvoicePesananInitialState;
  const factory InvoicePesananState.loading() = InvoicePesananLoadingState;
  const factory InvoicePesananState.error(String message) =
      InvoicePesananErrorState;
  const factory InvoicePesananState.loaded({
    required PesananInvoiceResponseModel response,
  }) = InvoicePesananLoadedState;
}
