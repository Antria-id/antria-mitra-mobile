import 'package:antria_mitra_mobile/src/features/kasir/presentation/bloc/orderlist/order_list_bloc.dart';
import 'package:antria_mitra_mobile/src/features/kasir/presentation/bloc/produk/produk_bloc.dart';
import 'package:antria_mitra_mobile/src/features/kasir/presentation/widgets/cart_widget.dart';
import 'package:antria_mitra_mobile/src/features/kasir/presentation/widgets/product/product_list_widget.dart';
import 'package:antria_mitra_mobile/src/shared/custom_appbar_widget.dart';
import 'package:antria_mitra_mobile/src/shared/empty_data_widget.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class KasirPage extends StatefulWidget {
  const KasirPage({super.key});

  @override
  State<KasirPage> createState() => _KasirPageState();
}

class _KasirPageState extends State<KasirPage> {
  bool showCart = false;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ProdukBloc()..add(ProdukFetchData()),
        ),
        BlocProvider(
          create: (context) =>
              OrderListBloc()..add(GetProductsInOrderListEvent()),
        ),
      ],
      child: Scaffold(
        appBar: CustomAppBarWidget(
          title: 'Kasir',
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: AppColor.backgroundColor,
        body: Stack(
          children: [
            BlocBuilder<ProdukBloc, ProdukState>(
              builder: (context, state) {
                if (state is ProdukError) {
                  return const Center(
                    child: EmptyDataWidget(
                      text: 'Data tidak ditemukan',
                    ),
                  );
                } else if (state is ProdukLoaded) {
                  return ProductListWidget(
                    productList: state.product,
                    onBuyButtonPressed: () {
                      setState(() {
                        showCart = true;
                      });
                      final orderListBloc =
                          BlocProvider.of<OrderListBloc>(context);
                      if (orderListBloc.state is OrderListLoaded &&
                          (orderListBloc.state as OrderListLoaded)
                              .products
                              .isNotEmpty) {
                        setState(() {
                          showCart = true;
                        });
                      }
                    },
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
            BlocListener<OrderListBloc, OrderListState>(
              listener: (context, state) {
                if (state is OrderListLoaded) {
                  setState(() {
                    showCart = state.products.isNotEmpty;
                  });
                }
              },
              child: showCart
                  ? const Align(
                      alignment: Alignment.bottomCenter,
                      child: CartWidget(),
                    )
                  : Container(),
            ),
          ],
        ),
      ),
    );
  }
}
