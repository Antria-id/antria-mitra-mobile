import 'package:antria_mitra_mobile/src/features/kasir/presentation/bloc/orderlist/order_list_bloc.dart';
import 'package:antria_mitra_mobile/src/shared/custom_button_widget.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class CardProductWidget extends StatefulWidget {
  final int productId;
  final String image;
  final String productName;
  final String productDesc;
  final int productPrice;
  final VoidCallback onPressed;
  final int stock;

  const CardProductWidget({
    super.key,
    required this.image,
    required this.productName,
    required this.productPrice,
    required this.onPressed,
    required this.stock,
    required this.productId,
    required this.productDesc,
  });

  @override
  State<CardProductWidget> createState() => _CardProductWidgetState();
}

class _CardProductWidgetState extends State<CardProductWidget>
    with AutomaticKeepAliveClientMixin {
  int quantity = 1;
  bool isTambah = false;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    final orderListBloc =
        BlocProvider.of<OrderListBloc>(context, listen: false);
    final orderListState = orderListBloc.state;
    if (orderListState is OrderListLoaded) {
      isTambah = orderListState.products.any(
        (order) => order['id'] == widget.productId,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    String formattedPrice = NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    ).format(widget.productPrice);
    super.build(context);

    return BlocBuilder<OrderListBloc, OrderListState>(
      builder: (context, state) {
        if (state is OrderListLoaded) {
          isTambah =
              state.products.any((order) => order['id'] == widget.productId);
          quantity = state.products.firstWhere(
              (product) => product['id'] == widget.productId,
              orElse: () => {'quantity': 1})['quantity'];
        }

        return Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 1,
                offset: const Offset(0, 1),
              ),
            ],
            color: Colors.white,
          ),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 90,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: Image.network(
                    widget.image,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Image.asset(
                        'assets/images/empty_image.jpg',
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      widget.productName,
                      style: const TextStyle(
                        color: Color(0xff4B4B4B),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      widget.productDesc,
                      style: AppTextStyle.mediumGrey,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      formattedPrice,
                      style: AppTextStyle.mediumBlack.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    Center(
                      child: isTambah
                          ? Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 32,
                                      height: 32,
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                        color: Colors.pink.shade100,
                                      ),
                                      child: GestureDetector(
                                        onTap: () {
                                          if (quantity > 1) {
                                            setState(() {
                                              quantity--;
                                            });
                                          } else if (quantity == 1) {
                                            setState(() {
                                              isTambah = false;
                                            });
                                          }
                                          final orderList =
                                              BlocProvider.of<OrderListBloc>(
                                            context,
                                          );
                                          orderList.add(
                                            DecrementQuantityEvent(
                                              productId: widget.productId,
                                              quantity: quantity,
                                            ),
                                          );
                                        },
                                        child: const Icon(
                                          Icons.remove,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      width: 58,
                                      height: 32,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                        ),
                                        color: AppColor.dividerColor,
                                      ),
                                      child: Column(
                                        children: [
                                          const SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            '$quantity',
                                            style: AppTextStyle.largeBlack
                                                .copyWith(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 3,
                                          ),
                                          Container(
                                            width: 58,
                                            height: 2,
                                            color: Colors.green,
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                        color: Colors.pink[100],
                                      ),
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            if (quantity < widget.stock) {
                                              setState(() {
                                                quantity++;
                                                final orderList = BlocProvider
                                                    .of<OrderListBloc>(
                                                  context,
                                                );
                                                orderList.add(
                                                  IncrementQuantityEvent(
                                                    productId: widget.productId,
                                                    quantity: quantity,
                                                  ),
                                                );
                                              });
                                            }
                                          });
                                        },
                                        child: const Icon(
                                          Icons.add,
                                          size: 20,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            )
                          : CustomButtonWidget(
                              circularButton: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              size: Size(double.infinity, 30),
                              child: Text(
                                'Tambah',
                                style: AppTextStyle.mediumBlack.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              onPressed: () {
                                widget.onPressed();
                                setState(() {
                                  isTambah = true;
                                });
                                final orderList =
                                    BlocProvider.of<OrderListBloc>(context);
                                orderList.add(
                                  AddProductToOrderListEvent(
                                    productId: widget.productId,
                                    quantity: quantity,
                                    note: "",
                                  ),
                                );
                              },
                            ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
