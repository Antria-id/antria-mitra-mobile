import 'package:antria_mitra_mobile/src/features/history_transaksi/presentation/bloc/detail_transaksi/detail_transaksi_bloc.dart';
import 'package:antria_mitra_mobile/src/shared/empty_data_widget.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class SuccessPayment extends StatelessWidget {
  final String invoice;
  final int totalPayment;

  const SuccessPayment({
    super.key,
    required this.invoice,
    required this.totalPayment,
  });

  String formatDate(DateTime? date) {
    if (date == null) return '';
    final DateFormat formatter = DateFormat('dd-MM-yyyy');
    return formatter.format(date);
  }

  @override
  Widget build(BuildContext context) {
    int biayaLayanan = 1000;

    return BlocProvider(
      create: (context) => DetailTransaksiBloc()
        ..add(DetailTransaksiFetchData(invoice: invoice)),
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
              totalPrice += (orderItem.quantity! * orderItem.produk!.harga!) +
                  biayaLayanan;
            }

            int returnAmount = totalPayment - totalPrice;

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

            String formattedReturn = NumberFormat.currency(
              locale: 'id_ID',
              symbol: 'Rp ',
              decimalDigits: 0,
            ).format(returnAmount);

            return AlertDialog(
              backgroundColor: AppColor.whiteColor,
              title: Column(
                children: [
                  const Center(
                    child: CircleAvatar(
                      backgroundColor: AppColor.primaryColor,
                      child: Icon(
                        Icons.check,
                        color: AppColor.whiteColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Pembayaran Berhasil',
                    style: AppTextStyle.mediumBlack,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    invoice,
                    style: AppTextStyle.mediumBlack,
                  )
                ],
              ),
              content: SingleChildScrollView(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: ListBody(
                    children: <Widget>[
                      const Text(
                        'PAYMENT METHOD',
                        style: AppTextStyle.mediumGrey,
                      ),
                      TextFormField(
                        initialValue: transaksi.payment,
                        readOnly: true,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          fillColor: AppColor.transparent,
                          border: UnderlineInputBorder(),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: AppColor.blackColor),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: AppColor.blackColor),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'TOTAL PRICE',
                        style: AppTextStyle.mediumGrey,
                      ),
                      TextFormField(
                        initialValue: formattedPrice,
                        readOnly: true,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          fillColor: AppColor.transparent,
                          border: UnderlineInputBorder(),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: AppColor.blackColor),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: AppColor.blackColor),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'TOTAL PAYMENT',
                        style: AppTextStyle.mediumGrey,
                      ),
                      TextFormField(
                        initialValue: formattedTotal,
                        readOnly: true,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          fillColor: AppColor.transparent,
                          border: UnderlineInputBorder(),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: AppColor.blackColor),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: AppColor.blackColor),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'RETURN',
                        style: AppTextStyle.mediumGrey,
                      ),
                      TextFormField(
                        initialValue: formattedReturn,
                        readOnly: true,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          fillColor: AppColor.transparent,
                          border: UnderlineInputBorder(),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: AppColor.blackColor),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: AppColor.blackColor),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'TRANSACTION TIME',
                        style: AppTextStyle.mediumGrey,
                      ),
                      TextFormField(
                        initialValue: formatDate(transaksi.createdAt),
                        readOnly: true,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          fillColor: AppColor.transparent,
                          border: UnderlineInputBorder(),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: AppColor.blackColor),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: AppColor.blackColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              actions: [
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.popUntil(context, (route) => route.isFirst);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Done',
                      style: AppTextStyle.mediumWhite,
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
    );
  }
}
