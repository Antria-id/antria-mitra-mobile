import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/kasir/domain/usecases/order_list_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:antria_mitra_mobile/src/core/failure/failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'order_list_event.dart';
part 'order_list_state.dart';

class OrderListBloc extends Bloc<OrderListEvent, OrderListState> {
  OrderListBloc() : super(OrderListInitial()) {
    on<AddProductToOrderListEvent>(_onAddProductToOrderList);
    on<GetProductsInOrderListEvent>(_onGetProductsInOrderList);
    on<IncrementQuantityEvent>(_onIncrementQuantity);
    on<DecrementQuantityEvent>(_onDecrementQuantity);
    on<AddPesananEvent>(_onAddPesanan);
    on<AddNoteEvent>(_onAddNote);
  }

  Future<void> _onAddProductToOrderList(
    AddProductToOrderListEvent event,
    Emitter<OrderListState> emit,
  ) async {
    emit(OrderListLoading());
    final result = await serviceLocator<OrderListUsecase>()
        .addProduct(event.productId, event.quantity, event.note);
    result.fold(
      (failure) => emit(OrderListError(_mapFailureToMessage(failure))),
      (_) {
        emit(ProductAddedToOrderList());
      },
    );
  }

  Future<void> _onIncrementQuantity(
    IncrementQuantityEvent event,
    Emitter<OrderListState> emit,
  ) async {
    emit(OrderListLoading());
    final result = await serviceLocator<OrderListUsecase>()
        .incrementOrderQuantity(event.productId, event.quantity);
    result.fold(
      (failure) => emit(OrderListError(_mapFailureToMessage(failure))),
      (_) {
        emit(ProductAddedToOrderList());
      },
    );
  }

  Future<void> _onDecrementQuantity(
    DecrementQuantityEvent event,
    Emitter<OrderListState> emit,
  ) async {
    emit(OrderListLoading());
    final result = await serviceLocator<OrderListUsecase>()
        .decrementOrderQuantity(event.productId, event.quantity);
    result.fold(
      (failure) => emit(OrderListError(_mapFailureToMessage(failure))),
      (_) {
        emit(ProductAddedToOrderList());
      },
    );
  }

  Future<void> _onGetProductsInOrderList(
    GetProductsInOrderListEvent event,
    Emitter<OrderListState> emit,
  ) async {
    emit(OrderListLoading());
    final result =
        await serviceLocator<OrderListUsecase>().getProductsInOrderList();
    result.fold(
      (failure) => emit(OrderListError(_mapFailureToMessage(failure))),
      (products) => emit(OrderListLoaded(products)),
    );
  }

  Future<void> _onAddPesanan(
    AddPesananEvent event,
    Emitter<OrderListState> emit,
  ) async {
    emit(OrderListLoading());
    final result = await serviceLocator<OrderListUsecase>().insertPesanan(
      event.invoice,
      event.payment,
      event.pemesanan,
      event.takeaway,
      event.mitraId,
    );
    result.fold(
      (failure) => emit(OrderListError(_mapFailureToMessage(failure))),
      (_) {
        emit(AddPesanan(invoice: event.invoice));
      },
    );
  }

  Future<void> _onAddNote(
    AddNoteEvent event,
    Emitter<OrderListState> emit,
  ) async {
    emit(OrderListLoading());
    final result = await serviceLocator<OrderListUsecase>().updateOrderList(
      event.id,
      event.note,
    );
    result.fold(
      (failure) => emit(OrderListError(_mapFailureToMessage(failure))),
      (_) {
        emit(AddNote());
      },
    );
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case LocalDatabaseQueryFailure:
        return 'Database Error';
      default:
        return 'Unexpected Error';
    }
  }
}
