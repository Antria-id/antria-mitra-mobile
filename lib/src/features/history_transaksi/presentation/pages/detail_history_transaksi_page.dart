import 'package:antria_mitra_mobile/src/features/history_transaksi/data/models/detail_transaksi_model.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/presentation/bloc/detail_transaksi/detail_transaksi_bloc.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/presentation/widgets/list_card_order.dart';
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
    final DateFormat formatter = DateFormat('dd-MM-yyyy, HH:mm');
    return formatter.format(date);
  }

  List<String> formatOrderList(List<Oderlist> orderList) {
    return orderList
        .map((order) => '${order.produk!.namaProduk} x${order.quantity}')
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    int biayaLayanan = 1000;
    return BlocProvider(
      create: (context) => DetailTransaksiBloc()
        ..add(
          DetailTransaksiFetchData(invoice: invoice),
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
        body: SingleChildScrollView(
          child: BlocBuilder<DetailTransaksiBloc, DetailTransaksiState>(
            builder: (context, state) {
              if (state is DetailTransaksiError) {
                return const EmptyDataWidget(
                  text: 'Data tidak ditemukan',
                );
              } else if (state is DetailTransaksiLoaded) {
                var transaksi = state.response;

                int totalPrice = 0;
                for (var orderItem in transaksi.oderlist!) {
                  totalPrice +=
                      (orderItem.quantity! * orderItem.produk!.harga!);
                }

                int totalPayment = totalPrice + biayaLayanan;

                var takeaway =
                    transaksi.takeaway == true ? 'Take away' : 'Dine In';

                var pemesanan =
                    transaksi.pemesanan == 'OFFLINE' ? 'Offline' : 'Online';

                String formattedPrice = NumberFormat.currency(
                  locale: 'id_ID',
                  symbol: 'Rp ',
                  decimalDigits: 0,
                ).format(totalPrice);

                String formattedTotal = NumberFormat.currency(
                  locale: 'id_ID',
                  symbol: 'Rp ',
                  decimalDigits: 0,
                ).format(totalPayment);

                String formattedBiaya = NumberFormat.currency(
                  locale: 'id_ID',
                  symbol: 'Rp ',
                  decimalDigits: 0,
                ).format(biayaLayanan);

                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              invoice,
                              style: AppTextStyle.xxlargeBlack.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '$pemesanan Order',
                              style: AppTextStyle.mediumBlack.copyWith(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Detail Pesanan',
                                style: AppTextStyle.mediumBlack.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                formatDate(transaksi.createdAt),
                                style: AppTextStyle.mediumBlack.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                takeaway,
                                style: AppTextStyle.mediumBlack.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      ListCardOrder(orderList: transaksi.oderlist!),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Detail Pembayaran',
                        style: AppTextStyle.mediumBlack.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Pemesan',
                            style: AppTextStyle.mediumBlack.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            transaksi.pelanggan!.username!,
                            style: AppTextStyle.mediumBlack.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Harga',
                            style: AppTextStyle.mediumBlack.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            formattedPrice,
                            style: AppTextStyle.mediumBlack.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Biaya Layanan',
                            style: AppTextStyle.mediumBlack.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            formattedBiaya,
                            style: AppTextStyle.mediumBlack.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Pembayaran',
                            style: AppTextStyle.mediumBlack.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            formattedTotal,
                            style: AppTextStyle.mediumBlack.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Metode Pembayaran',
                            style: AppTextStyle.mediumBlack.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            transaksi.payment!,
                            style: AppTextStyle.mediumBlack.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
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
