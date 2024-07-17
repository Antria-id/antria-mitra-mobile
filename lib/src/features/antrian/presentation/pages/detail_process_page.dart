import 'package:antria_mitra_mobile/src/core/utils/constant.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/models/request/status_pesanan_request.dart';
import 'package:antria_mitra_mobile/src/features/antrian/presentation/bloc/update_status_pesanan/update_status_pesanan_bloc.dart';
import 'package:antria_mitra_mobile/src/features/antrian/presentation/bloc/invoice_pesanan/invoice_pesanan_bloc.dart';
import 'package:antria_mitra_mobile/src/features/antrian/presentation/widgets/pemesanan/detail_pemesanan_widget.dart';
import 'package:antria_mitra_mobile/src/features/antrian/presentation/widgets/order/order_list_widget.dart';
import 'package:antria_mitra_mobile/src/shared/toast.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';

class DetailProcessPage extends StatefulWidget {
  final String invoice;
  const DetailProcessPage({
    super.key,
    required this.invoice,
  });

  @override
  State<DetailProcessPage> createState() => _DetailProcessPageState();
}

class _DetailProcessPageState extends State<DetailProcessPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InvoicePesananBloc()
        ..add(
          InvoicePesananFetchData(invoice: widget.invoice),
        ),
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 88,
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
                                        pesananDetail.pelanggan!.username ==
                                                "anonymous"
                                            ? pesananDetail.antrian!.pesananId!
                                            : pesananDetail
                                                .pelanggan!.username!,
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
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      const Text(
                                        'Posisi Antrian',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Text(
                                        pesananDetail.antrian!.id.toString(),
                                        style: const TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const SizedBox(
                                    height: 50,
                                    child: VerticalDivider(
                                      color: AppColor.dividerColor,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    children: [
                                      const Text(
                                        'Estimasi Waktu',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          TimerCountdown(
                                            enableDescriptions: false,
                                            timeTextStyle: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 24,
                                            ),
                                            format: CountDownTimerFormat
                                                .minutesOnly,
                                            endTime: DateTime.now().add(
                                              Duration(
                                                minutes: pesananDetail
                                                    .antrian!.estimasi!,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 5),
                                          const Text(
                                            'Menit',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 24,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
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
                                    BlocListener<UpdateStatusPesananBloc,
                                        UpdateStatusPesananState>(
                                      listener: (context, state) {
                                        if (state
                                            is UpdateStatusPesananSuccess) {
                                          showToastSuccessMessage(
                                            'Pesanan Selesai',
                                          );
                                          Navigator.of(context).pop();
                                        } else if (state
                                            is UpdateStatusPesananError) {
                                          showToastFailedMessage(
                                            'Gagal Update Status Pesanan',
                                          );
                                        }
                                      },
                                      child: DetailPemesananWidget(
                                        isPending: false,
                                        isTakeAway: state.response.takeaway!,
                                        totalPrice: totalPrice,
                                        onFinishPressed: () {
                                          final updateEvent =
                                              UpdateStatusPesananTapped(
                                            requestUser:
                                                const StatusPesananRequestModel(
                                              orderstatus: 'ALLDONE',
                                            ),
                                            id: pesananDetail.antrian!.id!,
                                          );
                                          context
                                              .read<UpdateStatusPesananBloc>()
                                              .add(updateEvent);
                                        },
                                        isAmbil: false,
                                      ),
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
