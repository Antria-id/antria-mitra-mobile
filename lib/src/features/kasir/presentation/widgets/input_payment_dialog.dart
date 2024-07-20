import 'package:antria_mitra_mobile/src/features/kasir/presentation/widgets/sucess_payment_dialog.dart';
import 'package:antria_mitra_mobile/src/shared/custom_button_widget.dart';
import 'package:antria_mitra_mobile/src/shared/textfield_widget.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class InputPaymentDialog extends StatelessWidget {
  final String invoice;

  const InputPaymentDialog({super.key, required this.invoice});

  @override
  Widget build(BuildContext context) {
    int totalPayment = 0;

    return AlertDialog(
      backgroundColor: AppColor.backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      contentPadding: const EdgeInsets.all(10),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 20),
            Text(
              'Total Pembayaran',
              style: AppTextStyle.largeBlack.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: TextFieldWidget(
                onChanged: (value) {
                  totalPayment = int.tryParse(value.trim()) ?? 0;
                },
                hintText: 'Masukan Nominal Pembayaran',
                type: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 10),
              child: CustomButtonWidget(
                backgroundColor: AppColor.primaryColor,
                circularButton: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                size: const Size(double.infinity, 50),
                child: const Text(
                  'Process',
                  style: AppTextStyle.mediumWhite,
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return SuccessPayment(
                        invoice: invoice,
                        totalPayment: totalPayment,
                      );
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
