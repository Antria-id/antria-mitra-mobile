import 'package:antria_mitra_mobile/src/features/antrian/presentation/bloc/update_status_pesanan/update_status_pesanan_bloc.dart';
import 'package:antria_mitra_mobile/src/features/home/presentation/bloc/pesanan_mitra/pesanan_mitra_bloc.dart';
import 'package:antria_mitra_mobile/src/shared/failed_fetch_data_widget.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DailyIncomeWidget extends StatefulWidget {
  const DailyIncomeWidget({super.key});

  @override
  State<DailyIncomeWidget> createState() => _DailyIncomeWidgetState();
}

class _DailyIncomeWidgetState extends State<DailyIncomeWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PesananMitraBloc()..add(PesananMitraFetchData()),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(10.0),
          ),
          border: Border.all(
            color: AppColor.dividerColor,
            width: 0.5,
          ),
          color: Colors.white,
        ),
        child: BlocListener<UpdateStatusPesananBloc, UpdateStatusPesananState>(
          listener: (context, state) {
            if (state is UpdateStatusPesananSuccess) {
              BlocProvider.of<PesananMitraBloc>(context)
                  .add(PesananMitraFetchData());
            }
          },
          child: BlocBuilder<PesananMitraBloc, PesananMitraState>(
            builder: (context, state) {
              if (state is PesananMitraError) {
                return const FailedFetchDataWidget();
              } else if (state is PesananMitraLoaded) {
                final order = state.pesananList;
                final now = DateTime.now();
                final today = DateTime(now.year, now.month, now.day);

                int jumlahOrder = order.where((order) {
                  final antrian = order.antrian;
                  if (antrian != null) {
                    final createdAt = antrian.createdAt;
                    final isCreatedToday = createdAt != null &&
                        DateTime(
                              createdAt.year,
                              createdAt.month,
                              createdAt.day,
                            ) ==
                            today;
                    return isCreatedToday && antrian.orderstatus == "ALLDONE";
                  }
                  return false;
                }).length;

                int jumlahAntrian = order
                    .where(
                      (order) =>
                          order.antrian != null &&
                          order.antrian!.orderstatus == "PROCESS",
                    )
                    .length;
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 30,
                        horizontal: 13,
                      ),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Pesanan Hari ini',
                                style: AppTextStyle.smallBlack.copyWith(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '$jumlahOrder Pesanan',
                                    style: AppTextStyle.smallBlack.copyWith(
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            'assets/icons/receipt.png',
                            width: 34,
                            height: 34,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 64,
                      child: VerticalDivider(
                        color: AppColor.dividerColor,
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 10),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Jumlah Antrian',
                                    style: AppTextStyle.smallBlack.copyWith(
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '$jumlahAntrian antrian',
                                    style: AppTextStyle.smallBlack.copyWith(
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Image.asset(
                                'assets/icons/queue.png',
                                width: 34,
                                height: 34,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              }
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
