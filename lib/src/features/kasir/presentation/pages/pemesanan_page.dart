import 'package:antria_mitra_mobile/src/features/kasir/presentation/widgets/payment/list_payment_method_widget.dart';
import 'package:antria_mitra_mobile/src/features/kasir/presentation/widgets/pesanan/list_pesanan_widget.dart';
import 'package:antria_mitra_mobile/src/shared/custom_button_widget.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class PemesananPage extends StatefulWidget {
  const PemesananPage({super.key});

  @override
  State<PemesananPage> createState() => _PemesananPageState();
}

class _PemesananPageState extends State<PemesananPage> {
  String paymentMethod = 'Pilih Metode Pembayaran';
  int biayaLayanan = 2000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Pesanan',
          style: AppTextStyle.xxxlargeBlack.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: AppColor.backgroundColor,
      body: Column(
        children: [
          ListPesananWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 30,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Harga Item',
                      style: AppTextStyle.mediumBlack,
                    ),
                    Text(
                      'Rp 100000',
                      style: AppTextStyle.mediumBlack.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Biaya Layanan',
                      style: AppTextStyle.mediumBlack,
                    ),
                    Text(
                      'Rp $biayaLayanan',
                      style: AppTextStyle.mediumBlack.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  thickness: 0.5,
                  color: AppColor.dividerColor,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Harga total',
                      style: AppTextStyle.xxlargeBlack.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Rp 10.000',
                      style: AppTextStyle.xxlargeBlack.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return FractionallySizedBox(
                          heightFactor: 0.5,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                Expanded(
                                  child: ListPaymentMethodWidget(
                                    onPaymentMethodChanged: (String value) {
                                      setState(() {
                                        paymentMethod = value;
                                      });
                                    },
                                  ),
                                ),
                                CustomButtonWidget(
                                  backgroundColor: AppColor.primaryColor,
                                  circularButton: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  size: const Size(360, 50),
                                  child: const Text(
                                    'Confirm',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    minimumSize: const Size(337, 67),
                    backgroundColor: AppColor.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Metode Payment',
                            style: AppTextStyle.smallWhite.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            paymentMethod,
                            style: AppTextStyle.smallWhite,
                          ),
                        ],
                      ),
                      Text(
                        'Rp 100000',
                        style: AppTextStyle.mediumWhite.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButtonWidget(
                  backgroundColor: AppColor.primaryColor,
                  circularButton: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  size: const Size(254, 46),
                  child: Text(
                    'Selesai',
                    style: AppTextStyle.mediumWhite.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
