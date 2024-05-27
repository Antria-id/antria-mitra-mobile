import 'package:antria_mitra_mobile/src/features/history_transaksi/presentation/widgets/dashed_divider.dart';
import 'package:antria_mitra_mobile/src/shared/custom_appbar_widget.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class DetailHistoryTransaksiPage extends StatelessWidget {
  const DetailHistoryTransaksiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Column(
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
              'INVCGA1RO2131026032024',
              style: AppTextStyle.xxlargeBlack.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 340,
              height: 310,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
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
                          '01-02-2024, 09.30',
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
                          'Transaksi Online',
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
                        Text(
                          'Mie Gacoan 1x, Es Tex 1x',
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
                          'Sender Name',
                          style: AppTextStyle.smallBlack,
                        ),
                        Text(
                          'Ahmad',
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
                          'Rp 45.000',
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
        ),
      ),
    );
  }
}
