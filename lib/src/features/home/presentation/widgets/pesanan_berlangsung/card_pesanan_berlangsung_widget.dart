import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class CardPesananBerlangsungWidget extends StatelessWidget {
  final String? status;
  final String? invoice;
  const CardPesananBerlangsungWidget({super.key, this.status, this.invoice});

  @override
  Widget build(BuildContext context) {
    Color? statusColor;
    if (status == "PROCESS") {
      statusColor = Colors.green;
    } else if (status == "WAITING") {
      statusColor = Colors.yellow[700];
    } else if (status == "CANCELED") {
      statusColor = AppColor.redColor;
    }
    return Column(
      children: [
        const SizedBox(
          height: 4,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/icons/receipt.png',
                    width: 30,
                    height: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    invoice ?? '',
                    style: AppTextStyle.smallBlack.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Text(
                status ?? '',
                style: TextStyle(
                  color: statusColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
