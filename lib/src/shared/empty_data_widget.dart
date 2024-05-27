import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class EmptyDataWidget extends StatelessWidget {
  const EmptyDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/no-data.png',
          width: 251,
          height: 251,
        ),
        const SizedBox(
          height: 33,
        ),
        Text(
          'Data tidak ditemukan',
          style: AppTextStyle.largeBlack.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
