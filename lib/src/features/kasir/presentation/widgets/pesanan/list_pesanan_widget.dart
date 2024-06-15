import 'package:antria_mitra_mobile/src/core/utils/constant.dart';
import 'package:antria_mitra_mobile/src/features/kasir/presentation/bloc/orderlist/order_list_bloc.dart';
import 'package:antria_mitra_mobile/src/features/kasir/presentation/widgets/pesanan/pesanan_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListPesananWidget extends StatelessWidget {
  const ListPesananWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OrderListBloc()..add(GetProductsInOrderListEvent()),
      child: BlocBuilder<OrderListBloc, OrderListState>(
        builder: (context, state) {
          if (state is OrderListLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is OrderListLoaded) {
            return SizedBox(
              height: 260,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(vertical: 20),
                itemCount: state.products.length,
                itemBuilder: (context, index) {
                  final cart = state.products[index];
                  return PesananCardWidget(
                    image:
                        '${APIUrl.baseUrl}${APIUrl.imagePath}${cart['gambar']}',
                    label: cart['nama_produk'],
                    price: cart['harga'],
                    kuantitas: cart['quantity'],
                    productId: cart['id'],
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 20,
                  );
                },
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
