import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class EmptyAntrianWidget extends StatelessWidget {
  final String text;
  const EmptyAntrianWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/no-antrian.png',
          width: 251,
          height: 251,
        ),
        const SizedBox(
          height: 33,
        ),
        Text(
          text,
          style: AppTextStyle.largeBlack.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
