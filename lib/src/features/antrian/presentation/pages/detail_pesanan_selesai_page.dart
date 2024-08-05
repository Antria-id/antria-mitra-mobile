import 'package:antria_mitra_mobile/src/core/utils/constant.dart';
import 'package:antria_mitra_mobile/src/features/antrian/presentation/bloc/invoice_pesanan/invoice_pesanan_bloc.dart';
import 'package:antria_mitra_mobile/src/features/antrian/presentation/widgets/pemesanan/detail_pemesanan_widget.dart';
import 'package:antria_mitra_mobile/src/features/antrian/presentation/widgets/order/order_list_widget.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class DetailPesananSelesaiPage extends StatelessWidget {
  final String invoice;
  const DetailPesananSelesaiPage({super.key, required this.invoice});

  String formatDate(DateTime? date) {
    if (date == null) return '';
    final DateFormat formatter = DateFormat('dd-MM-yyyy, HH:mm');
    final DateTime localDate = date.toLocal();
    return formatter.format(localDate);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InvoicePesananBloc()
        ..add(
          InvoicePesananFetchData(invoice: invoice),
        ),
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 110,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: AppColor.gradientTopColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(26),
                        bottomRight: Radius.circular(26),
                      ),
                    ),
                    child: SafeArea(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              size: 20,
                              Icons.arrow_back_ios_new_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  BlocBuilder<InvoicePesananBloc, InvoicePesananState>(
                    builder: (context, state) {
                      if (state is InvoicePesananError) {
                        return Center(
                          child: Text(state.message!),
                        );
                      } else if (state is InvoicePesananLoaded) {
                        final pesananDetail = state.response;
                        int totalPrice = 0;
                        for (var orderItem in pesananDetail.oderlist!) {
                          totalPrice +=
                              (orderItem.quantity! * orderItem.produk!.harga!);
                        }
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 30,
                                    ),
                                    CircleAvatar(
                                      radius: 55,
                                      backgroundImage: pesananDetail.pelanggan!
                                              .profilePicture!.isNotEmpty
                                          ? NetworkImage(
                                              '${APIUrl.baseUrl}${APIUrl.imagePath}${pesananDetail.pelanggan!.profilePicture}',
                                            )
                                          : const AssetImage(
                                              'assets/icons/user-empty.png',
                                            ) as ImageProvider,
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      pesananDetail.pelanggan!.username ==
                                              "anonymous"
                                          ? pesananDetail.antrian!.pesananId!
                                          : pesananDetail.pelanggan!.username!,
                                      style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const Text(
                                      'Order List',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    OrderListWidget(
                                      orderList: [state.response],
                                    ),
                                    const Divider(
                                      color: AppColor.dividerColor,
                                    ),
                                    DetailPemesananWidget(
                                      isPending: false,
                                      isTakeAway: state.response.takeaway!,
                                      totalPrice: totalPrice,
                                      isAmbil: true,
                                      tanggal:
                                          formatDate(pesananDetail.createdAt),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      }
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
