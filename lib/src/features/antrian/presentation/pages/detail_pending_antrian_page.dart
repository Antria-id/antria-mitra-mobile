import 'package:antria_mitra_mobile/src/core/utils/constant.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/models/request/status_pesanan_request.dart';
import 'package:antria_mitra_mobile/src/features/antrian/presentation/bloc/invoice_pesanan/bloc/invoice_pesanan_bloc.dart';
import 'package:antria_mitra_mobile/src/features/antrian/presentation/bloc/update_status_pesanan/update_status_pesanan_bloc.dart';
import 'package:antria_mitra_mobile/src/features/antrian/presentation/widgets/pemesanan/detail_pemesanan_widget.dart';
import 'package:antria_mitra_mobile/src/features/antrian/presentation/widgets/order/order_list_widget.dart';
import 'package:antria_mitra_mobile/src/shared/dialog_widget.dart';
import 'package:antria_mitra_mobile/src/shared/toast.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailPendingPage extends StatelessWidget {
  final String invoice;
  const DetailPendingPage({super.key, required this.invoice});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InvoicePesananBloc()
        ..add(
          InvoicePesananUserEvent(invoice: invoice),
        ),
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 80,
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
                      if (state is InvoicePesananErrorState) {
                        return Center(
                          child: Text(state.message),
                        );
                      } else if (state is InvoicePesananLoadedState) {
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
                                child: SafeArea(
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 55,
                                        backgroundImage: pesananDetail
                                                .pelanggan!
                                                .profilePicture!
                                                .isNotEmpty
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
                                        pesananDetail.pelanggan!.username!,
                                        style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                    ],
                                  ),
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
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const Divider(
                                      color: AppColor.dividerColor,
                                    ),
                                    DetailPemesananWidget(
                                      isAmbil: false,
                                      isPending: true,
                                      isTakeAway: state.response.takeaway!,
                                      totalPrice: totalPrice,
                                      onAcceptPressed: () {
                                        Navigator.pop(context);
                                        showToastSuccessMessage(
                                          'Pesanan diproses',
                                        );
                                        final updateEvent =
                                            UpdateStatusPesananEvent
                                                .onUpdateTapped(
                                          requestUser:
                                              StatusPesananRequestModel(
                                            orderstatus: 'PROCESS',
                                          ),
                                          id: pesananDetail.antrian!.id!,
                                        );
                                        context
                                            .read<UpdateStatusPesananBloc>()
                                            .add(updateEvent);
                                      },
                                      onCancelPressed: () {
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return DialogWidget(
                                              title:
                                                  'Konfirmasi Pembatalan Pemesanan',
                                              onCancel: () {
                                                Navigator.pop(context);
                                              },
                                              subtitle:
                                                  'Apakah anda akan membatalkan pesanan?',
                                              textCancel: 'Tidak',
                                              textConfirm: 'Ya',
                                              onPressed: () {
                                                showToastSuccessMessage(
                                                  'Pesanan berhasil dibatalkan',
                                                );
                                                Navigator.pop(context);
                                              },
                                            );
                                          },
                                        );
                                      },
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
