import 'package:antria_mitra_mobile/src/features/kasir/presentation/bloc/orderlist/order_list_bloc.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OrderListBloc, OrderListState>(
      builder: (context, state) {
        if (state is OrderListLoading) {
          return Container();
        } else if (state is OrderListLoaded) {
          final products = state.products;
          final itemCount = products.length;
          final productNames =
              products.map((product) => product['nama_produk']).join(', ');
          int totalPrice = 0;

          for (var product in products) {
            int quantity = product['quantity'] ?? 0;
            int harga = product['harga'] ?? 0;

            totalPrice += quantity * harga;
          }
          String formattedPrice = NumberFormat.currency(
            locale: 'id_ID',
            symbol: 'Rp ',
            decimalDigits: 0,
          ).format(totalPrice);

          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/pemesanan');
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: AppColor.primaryColor,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/icons/cart.png',
                            width: 30,
                            height: 30,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                '$itemCount Items', // Updated here
                                style: AppTextStyle.smallWhite.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 200,
                                child: Text(
                                  productNames,
                                  style: AppTextStyle.smallWhite,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      Text(
                        formattedPrice,
                        style: AppTextStyle.smallWhite.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }
        return Container();
      },
      listener: (BuildContext context, OrderListState state) {
        if (state is ProductAddedToOrderList) {
          BlocProvider.of<OrderListBloc>(context).add(
            GetProductsInOrderListEvent(),
          );
        }
      },
    );
  }
}
