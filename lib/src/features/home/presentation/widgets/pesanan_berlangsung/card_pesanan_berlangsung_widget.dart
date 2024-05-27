import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class CardPesananBerlangsungWidget extends StatelessWidget {
  final String? status;
  final String? invoice;
  final String? total;
  const CardPesananBerlangsungWidget(
      {super.key, this.status, this.invoice, this.total});

  @override
  Widget build(BuildContext context) {
    Color? statusColor;
    if (status == "SUCCESS") {
      statusColor = Colors.green;
    } else if (status == "PENDING") {
      statusColor = Colors.yellow[700];
    } else {
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        invoice ?? '',
                        style: AppTextStyle.smallBlack.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        total ?? '',
                        style: const TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      )
                    ],
                  )
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
