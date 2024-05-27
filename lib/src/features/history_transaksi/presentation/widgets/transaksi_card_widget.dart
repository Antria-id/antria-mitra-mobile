import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class TransaksiCardWidget extends StatelessWidget {
  const TransaksiCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
          'INVCGA1RO2131026032024',
          style: AppTextStyle.mediumBlack.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      trailing: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        color: Colors.white,
        child: const Column(
          children: [
            Text(
              '01-10-2024',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              '+Rp 65.000',
              style: TextStyle(
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
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/detail-transaksi');
              },
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
        )
      ],
    );
  }
}
