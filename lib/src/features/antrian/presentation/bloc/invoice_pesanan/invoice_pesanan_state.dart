part of 'invoice_pesanan_bloc.dart';

sealed class InvoicePesananState extends Equatable {
  const InvoicePesananState();

  @override
  List<Object> get props => [];
}

final class InvoicePesananInitial extends InvoicePesananState {}

final class InvoicePesananLoading extends InvoicePesananState {}

final class InvoicePesananLoaded extends InvoicePesananState {
  final PesananInvoiceResponseModel response;

  const InvoicePesananLoaded({required this.response});
}

final class InvoicePesananError extends InvoicePesananState {
  final String? message;

  const InvoicePesananError({required this.message});
}
