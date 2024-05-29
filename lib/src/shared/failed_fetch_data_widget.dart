import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class FailedFetchDataWidget extends StatelessWidget {
  const FailedFetchDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/icons/nothing.png',
            width: 40,
            height: 40,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'No Fetch Data',
            style:
                AppTextStyle.smallBlack.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
