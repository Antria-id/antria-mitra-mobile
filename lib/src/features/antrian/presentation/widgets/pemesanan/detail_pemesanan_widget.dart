import 'package:antria_mitra_mobile/src/shared/custom_button_widget.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DetailPemesananWidget extends StatelessWidget {
  final bool isTakeAway;
  final int totalPrice;
  final bool isAmbil;
  final bool isPending;
  final String tanggal;
  final VoidCallback? onCancelPressed;
  final VoidCallback? onAcceptPressed;
  final VoidCallback? onFinishPressed;

  const DetailPemesananWidget({
    Key? key,
    required this.isAmbil,
    required this.isPending,
    required this.isTakeAway,
    required this.totalPrice,
    this.onCancelPressed,
    this.onAcceptPressed,
    this.onFinishPressed,
    required this.tanggal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double buttonWidth = (screenWidth - 60) / 2;
    int biayaLayanan = 1000;
    int total = totalPrice + biayaLayanan;

    String formattedPrice = NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    ).format(total);

    String tipePemesanan = isTakeAway ? 'Take-Away' : 'Dine-In';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        const Text(
          'Detail Pemesanan',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 1,
            height: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              color: AppColor.whiteColor,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Waktu Pemesanan',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        tanggal,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Pemesanan',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        width: 70,
                        height: 22,
                        decoration: BoxDecoration(
                          gradient: AppColor.gradientTopBottomColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            tipePemesanan,
                            style: AppTextStyle.xSmallWhite.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Harga Total',
                        style: AppTextStyle.mediumBlack.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        formattedPrice,
                        style: AppTextStyle.mediumBlack.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.04,
        ),
        isPending
            ? Row(
                children: [
                  CustomButtonWidget(
                    circularButton: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    backgroundColor: AppColor.redColor,
                    size: Size(buttonWidth, 50),
                    onPressed: onCancelPressed!,
                    child: Text(
                      'Cancel',
                      style: AppTextStyle.mediumWhite.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 36,
                  ),
                  CustomButtonWidget(
                    circularButton: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    backgroundColor: Colors.green,
                    size: Size(buttonWidth, 50),
                    onPressed: onAcceptPressed!,
                    child: Text(
                      'Terima',
                      style: AppTextStyle.mediumWhite.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            : isAmbil
                ? const SizedBox.shrink()
                : CustomButtonWidget(
                    circularButton: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    backgroundColor: Colors.green,
                    size: Size(MediaQuery.of(context).size.width * 1, 50),
                    onPressed: onFinishPressed!,
                    child: Text(
                      'Pesanan Selesai',
                      style: AppTextStyle.mediumWhite.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
      ],
    );
  }
}
