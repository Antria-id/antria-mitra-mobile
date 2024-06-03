part of 'invoice_pesanan_bloc.dart';

sealed class InvoicePesananEvent extends Equatable {
  const InvoicePesananEvent();

  @override
  List<Object> get props => [];
}

final class InvoicePesananFetchData extends InvoicePesananEvent {
  final String invoice;

  const InvoicePesananFetchData({required this.invoice});

  @override
  List<Object> get props => [invoice];
}
