import 'package:antria_mitra_mobile/src/features/history_transaksi/data/models/detail_transaksi_model.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/presentation/bloc/detail_transaksi/detail_transaksi_bloc.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/presentation/widgets/dashed_divider.dart';
import 'package:antria_mitra_mobile/src/shared/custom_appbar_widget.dart';
import 'package:antria_mitra_mobile/src/shared/empty_data_widget.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class DetailHistoryTransaksiPage extends StatelessWidget {
  final String invoice;
  const DetailHistoryTransaksiPage({super.key, required this.invoice});

  String formatDate(DateTime? date) {
    if (date == null) return '';
    final DateFormat formatter = DateFormat('dd-MM-yyyy');
    return formatter.format(date);
  }

  String formatOrderList(List<Oderlist> orderList) {
    return orderList
        .map((order) => '${order.produk!.namaProduk} ${order.quantity}x')
        .join(', ');
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DetailTransaksiBloc()
        ..add(
          DetailTransaksiFetchDataEvent(invoice: invoice),
        ),
      child: Scaffold(
        appBar: CustomAppBarWidget(
          title: 'Detail Transaksi',
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: AppColor.backgroundColor,
        body: Center(
          child: BlocBuilder<DetailTransaksiBloc, DetailTransaksiState>(
            builder: (context, state) {
              if (state is DetailTransaksiErrorState) {
                return const EmptyDataWidget();
              } else if (state is DetailTransaksiLoadedState) {
                var transaksi = state.response;
                int totalPrice = 0;
                for (var orderItem in transaksi.oderlist!) {
                  totalPrice +=
                      (orderItem.quantity! * orderItem.produk!.harga!);
                }
                String orderList = formatOrderList(transaksi.oderlist!);
                String formattedPrice = NumberFormat.currency(
                  locale: 'id_ID',
                  symbol: 'Rp ',
                  decimalDigits: 0,
                ).format(totalPrice);

                return Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Image.asset(
                      'assets/icons/receipt.png',
                      width: 60,
                      height: 60,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      transaksi.invoice!,
                      style: AppTextStyle.xxlargeBlack.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 340,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 18,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Waktu Order',
                                  style: AppTextStyle.smallBlack,
                                ),
                                Text(
                                  formatDate(transaksi.createdAt),
                                  style: AppTextStyle.smallBlack.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 26,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Payment Method',
                                  style: AppTextStyle.smallBlack,
                                ),
                                Text(
                                  transaksi.payment!,
                                  style: AppTextStyle.smallBlack.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 26,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Order',
                                  style: AppTextStyle.smallBlack,
                                ),
                                const SizedBox(width: 10),
                                Flexible(
                                  child: Text(
                                    orderList,
                                    style: AppTextStyle.smallBlack.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 26,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Sender',
                                  style: AppTextStyle.smallBlack,
                                ),
                                Text(
                                  transaksi.pelanggan!.username!,
                                  style: AppTextStyle.smallBlack.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 26,
                            ),
                            const DashedDivider(),
                            const SizedBox(
                              height: 26,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Amount',
                                  style: AppTextStyle.smallBlack,
                                ),
                                Text(
                                  formattedPrice,
                                  style: AppTextStyle.smallBlack.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 26,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Admin Fee',
                                  style: AppTextStyle.smallBlack,
                                ),
                                Text(
                                  'Rp 1.000',
                                  style: AppTextStyle.smallBlack.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                );
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
      ),
    );
  }
}
