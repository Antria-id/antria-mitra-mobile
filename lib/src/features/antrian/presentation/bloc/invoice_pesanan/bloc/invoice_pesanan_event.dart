part of 'invoice_pesanan_bloc.dart';

@freezed
class InvoicePesananEvent with _$InvoicePesananEvent {
  const factory InvoicePesananEvent.onGetInvoicePesanan({
    required String invoice,
  }) = InvoicePesananUserEvent;
}
