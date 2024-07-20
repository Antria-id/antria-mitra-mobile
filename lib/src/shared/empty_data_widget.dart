import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class EmptyDataWidget extends StatelessWidget {
  final double? width;
  final double? height;
  final String text;
  const EmptyDataWidget({
    super.key,
    required this.text,
    this.width = 251,
    this.height = 251,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/no-data.png',
          width: width,
          height: height,
        ),
        const SizedBox(
          height: 33,
        ),
        Text(
          text,
          style: AppTextStyle.largeBlack.copyWith(
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
