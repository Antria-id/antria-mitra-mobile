import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class ProfileButtonWidget extends StatelessWidget {
  final String? text;
  final String icon;
  final VoidCallback? onTap;
  const ProfileButtonWidget(
      {super.key, this.text, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 350,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Image.asset(
                    icon,
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  Text(
                    text ?? '',
                    style: AppTextStyle.mediumBlack.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            const Icon(
              Icons.keyboard_arrow_right_rounded,
              size: 30,
            )
          ],
        ),
      ),
    );
  }
}
