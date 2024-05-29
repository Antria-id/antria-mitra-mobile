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
  final VoidCallback? onCancelPressed;
  final VoidCallback? onAcceptPressed;
  final VoidCallback? onTakenPressed;
  final VoidCallback? onFinishPressed;

  const DetailPemesananWidget({
    Key? key,
    required this.isAmbil,
    required this.isPending,
    required this.isTakeAway,
    required this.totalPrice,
    this.onCancelPressed,
    this.onAcceptPressed,
    this.onTakenPressed,
    this.onFinishPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String formattedPrice = NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp',
      decimalDigits: 0,
    ).format(totalPrice);
    String tipePemesanan = isTakeAway ? 'Take-Away' : 'Dine-In';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        const Text(
          'Detail Pemesanan',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Column(
              children: [
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
                            fontWeight: FontWeight.bold,
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
                      style: AppTextStyle.mediumBlack
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      formattedPrice,
                      style: AppTextStyle.mediumBlack
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
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
                            size: const Size(160, 50),
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
                            size: const Size(160, 50),
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
                        ? CustomButtonWidget(
                            circularButton: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            backgroundColor: Colors.green,
                            size: const Size(360, 50),
                            onPressed: onTakenPressed!,
                            child: Text(
                              'Sudah Diambil',
                              style: AppTextStyle.mediumWhite.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        : CustomButtonWidget(
                            circularButton: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            backgroundColor: Colors.green,
                            size: const Size(360, 50),
                            onPressed: onFinishPressed!,
                            child: Text(
                              'Pesanan Selesai',
                              style: AppTextStyle.mediumWhite.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
