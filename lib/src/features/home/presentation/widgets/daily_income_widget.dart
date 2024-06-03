import 'package:antria_mitra_mobile/src/features/home/presentation/bloc/daily_income/daily_income_bloc.dart';
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
      create: (context) => DailyIncomeBloc()..add(DailyIncomeFetchData()),
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
        child: BlocBuilder<DailyIncomeBloc, DailyIncomeState>(
          builder: (context, state) {
            if (state is DailyIncomeError) {
              return const FailedFetchDataWidget();
            } else if (state is DailyIncomeLoaded) {
              final order = state.dailyIncome;
              int jumlahOrder = order
                  .where(
                    (order) =>
                        order.antrian.orderstatus == "ALLDONE" ||
                        order.antrian.orderstatus == "PROCESS",
                  )
                  .length;

              int jumlahAntrian = order
                  .where(
                    (order) => order.antrian.orderstatus == "PROCESS",
                  )
                  .length;
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 13),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Penjualan Hari ini',
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
                                  '$jumlahOrder Order',
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
    );
  }
}
