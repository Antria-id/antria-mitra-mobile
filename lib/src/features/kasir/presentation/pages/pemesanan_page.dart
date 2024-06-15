import 'package:antria_mitra_mobile/src/features/kasir/presentation/bloc/orderlist/order_list_bloc.dart';
import 'package:antria_mitra_mobile/src/features/kasir/presentation/widgets/payment/list_payment_method_widget.dart';
import 'package:antria_mitra_mobile/src/features/kasir/presentation/widgets/pesanan/list_pesanan_widget.dart';
import 'package:antria_mitra_mobile/src/shared/custom_button_widget.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class PemesananPage extends StatefulWidget {
  const PemesananPage({super.key});

  @override
  State<PemesananPage> createState() => _PemesananPageState();
}

class _PemesananPageState extends State<PemesananPage> {
  String paymentMethod = 'Pilih Metode Pembayaran';
  int biayaLayanan = 1000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
        title: Text(
          'Pesanan',
          style: AppTextStyle.xxxlargeBlack.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: AppColor.backgroundColor,
      body: BlocProvider(
        create: (context) =>
            OrderListBloc()..add(GetProductsInOrderListEvent()),
        child: Column(
          children: [
            const ListPesananWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 30,
              ),
              child: BlocBuilder<OrderListBloc, OrderListState>(
                builder: (context, state) {
                  if (state is OrderListLoading) {
                    return Container();
                  } else if (state is OrderListLoaded) {
                    final products = state.products;
                    int totalitemPrice = 0;

                    for (var product in products) {
                      int quantity = product['quantity'] ?? 0;
                      int harga = product['harga'] ?? 0;

                      totalitemPrice += quantity * harga;
                    }
                    String formattedPrice = NumberFormat.currency(
                      locale: 'id_ID',
                      symbol: 'Rp ',
                      decimalDigits: 0,
                    ).format(totalitemPrice);

                    int totalBiaya = totalitemPrice + biayaLayanan;
                    String formattedTotalBiaya = NumberFormat.currency(
                      locale: 'id_ID',
                      symbol: 'Rp ',
                      decimalDigits: 0,
                    ).format(totalBiaya);

                    String formattedBiayaLayanan = NumberFormat.currency(
                      locale: 'id_ID',
                      symbol: 'Rp ',
                      decimalDigits: 0,
                    ).format(biayaLayanan);

                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Harga Item',
                              style: AppTextStyle.mediumBlack,
                            ),
                            Text(
                              formattedPrice,
                              style: AppTextStyle.mediumBlack.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Biaya Layanan',
                              style: AppTextStyle.mediumBlack,
                            ),
                            Text(
                              formattedBiayaLayanan,
                              style: AppTextStyle.mediumBlack.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Divider(
                          thickness: 0.5,
                          color: AppColor.dividerColor,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Harga total',
                              style: AppTextStyle.xxlargeBlack.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              formattedTotalBiaya,
                              style: AppTextStyle.xxlargeBlack.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return FractionallySizedBox(
                                  heightFactor: 0.5,
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: ListPaymentMethodWidget(
                                            onPaymentMethodChanged:
                                                (String value) {
                                              setState(() {
                                                paymentMethod = value;
                                              });
                                            },
                                          ),
                                        ),
                                        CustomButtonWidget(
                                          backgroundColor:
                                              AppColor.primaryColor,
                                          circularButton:
                                              RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          size: const Size(360, 50),
                                          child: const Text(
                                            'Confirm',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            minimumSize: const Size(337, 67),
                            backgroundColor: AppColor.primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Metode Payment',
                                    style: AppTextStyle.smallWhite.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    paymentMethod,
                                    style: AppTextStyle.smallWhite,
                                  ),
                                ],
                              ),
                              Text(
                                formattedTotalBiaya,
                                style: AppTextStyle.mediumWhite.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    );
                  }
                  return Container();
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: CustomButtonWidget(
          backgroundColor: AppColor.primaryColor,
          circularButton: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          size: const Size(double.infinity, 50),
          child: Text(
            'Bayar',
            style: AppTextStyle.mediumWhite.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {
            Navigator.popUntil(context, (route) => route.isFirst);
          },
        ),
      ),
    );
  }
}
