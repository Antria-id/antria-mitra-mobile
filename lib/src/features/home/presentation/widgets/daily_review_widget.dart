import 'package:antria_mitra_mobile/src/features/home/presentation/bloc/daily_income/daily_income_bloc.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DailyReviewWidget extends StatefulWidget {
  const DailyReviewWidget({super.key});

  @override
  State<DailyReviewWidget> createState() => _DailyReviewWidgetState();
}

class _DailyReviewWidgetState extends State<DailyReviewWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          DailyIncomeBloc()..add(const GetDailyFetchDataEvent()),
      child: BlocBuilder<DailyIncomeBloc, DailyIncomeState>(
        builder: (context, state) {
          if (state is DailyIncomeErrorState) {
            return Center(
              child: Text(state.message),
            );
          } else if (state is DailyIncomeLoadedState) {
            final order = state.dailyIncome;
            DateTime today = DateTime.now();
            DateTime yesterday = today.subtract(
              const Duration(days: 1),
            );
            bool isOneDay =
                order.any((order) => order.createdAt.isAfter(yesterday));
            int jumlahOrder = isOneDay
                ? 0
                : order
                    .where(
                      (order) =>
                          order.antrian.orderstatus == "CONFIRM" ||
                          order.antrian.orderstatus == "PROCESS",
                    )
                    .length;

            int jumlahAntrian = order
                .where(
                  (order) => order.antrian.orderstatus == "PROCESS",
                )
                .length;
            return Container(
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
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
                          width: 12,
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
                          vertical: 30,
                        ),
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
              ),
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
