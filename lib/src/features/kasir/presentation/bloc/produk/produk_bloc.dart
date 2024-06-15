import 'package:antria_mitra_mobile/src/core/network/network_checker.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/kasir/data/models/product_model.dart';
import 'package:antria_mitra_mobile/src/features/kasir/domain/usecases/get_product_usecase.dart';
import 'package:antria_mitra_mobile/src/features/kasir/domain/usecases/order_list_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'produk_event.dart';
part 'produk_state.dart';

class ProdukBloc extends Bloc<ProdukEvent, ProdukState> {
  final NetworkChecker networkChecker;

  ProdukBloc()
      : networkChecker = serviceLocator<NetworkChecker>(),
        super(ProdukInitial()) {
    on<ProdukEvent>((event, emit) async {
      if (event is ProdukFetchData) {
        emit(ProdukLoading());
        bool isConnected = await networkChecker.isConnected;
        if (isConnected) {
          var result = await serviceLocator<GetProductUsecase>().getProduct();
          result.fold(
            (failure) {
              emit(ProdukError(message: failure.message));
            },
            (data) {
              emit(
                ProdukLoaded(
                  product: data,
                ),
              );
            },
          );
        } else {
          var result =
              await serviceLocator<OrderListUsecase>().getLocalProducts();
          result.fold(
            (failure) {
              emit(ProdukError(message: failure.message));
            },
            (data) {
              emit(
                ProdukLoaded(
                  product: data,
                ),
              );
            },
          );
        }
      }
    });
  }
}
