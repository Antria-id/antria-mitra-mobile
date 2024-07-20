part of 'order_list_bloc.dart';

sealed class OrderListEvent extends Equatable {
  const OrderListEvent();

  @override
  List<Object> get props => [];
}

class GetProductsInOrderListEvent extends OrderListEvent {}

class AddProductToOrderListEvent extends OrderListEvent {
  final int productId;
  final String note;
  final int quantity;

  const AddProductToOrderListEvent({
    required this.note,
    required this.productId,
    required this.quantity,
  });

  @override
  List<Object> get props => [productId, quantity];
}

class IncrementQuantityEvent extends OrderListEvent {
  final int productId;
  final int quantity;

  const IncrementQuantityEvent(
      {required this.productId, required this.quantity});

  @override
  List<Object> get props => [productId, quantity];
}

class DecrementQuantityEvent extends OrderListEvent {
  final int productId;
  final int quantity;

  const DecrementQuantityEvent(
      {required this.productId, required this.quantity});

  @override
  List<Object> get props => [productId, quantity];
}

class AddPesananEvent extends OrderListEvent {
  final String invoice;
  final String payment;
  final String pemesanan;
  final bool takeaway;
  final int mitraId;

  const AddPesananEvent(
      {required this.invoice,
      required this.payment,
      required this.pemesanan,
      required this.takeaway,
      required this.mitraId});

  @override
  List<Object> get props => [invoice, payment, pemesanan, takeaway, mitraId];
}

class AddNoteEvent extends OrderListEvent {
  final int id;
  final String note;

  const AddNoteEvent({required this.id, required this.note});

  @override
  List<Object> get props => [id, note];
}
