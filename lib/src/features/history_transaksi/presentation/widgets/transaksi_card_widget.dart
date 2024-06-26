import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransaksiCardWidget extends StatelessWidget {
  final String invoice;
  final String tanggal;
  final int income;
  final VoidCallback onTap;

  const TransaksiCardWidget({
    super.key,
    required this.invoice,
    required this.tanggal,
    required this.income,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    String formattedPrice = NumberFormat.currency(
      locale: 'id_ID',
      symbol: '+Rp ',
      decimalDigits: 0,
    ).format(income);
    return ExpansionTile(
      tilePadding: const EdgeInsets.symmetric(horizontal: 10),
      collapsedShape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      backgroundColor: Colors.white,
      collapsedBackgroundColor: Colors.white,
      title: Container(
        width: double.infinity,
        color: Colors.white,
        child: Text(
          invoice,
          style: AppTextStyle.mediumBlack.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      trailing: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              tanggal,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              formattedPrice,
              style: const TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      children: [
        Container(
          width: double.infinity,
          height: 40,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            color: AppColor.dividerColor,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
              onTap: onTap,
              child: const Center(
                child: Text(
                  'Lihat Detail',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
