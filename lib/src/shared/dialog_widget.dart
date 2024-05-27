import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';

import '../themes/app_color.dart';

class DialogWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String textCancel;
  final String textConfirm;
  final VoidCallback onCancel;
  final VoidCallback onPressed;
  const DialogWidget({
    super.key,
    required this.title,
    required this.onCancel,
    required this.subtitle,
    required this.textCancel,
    required this.textConfirm,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child: Text(
          title,
          style: AppTextStyle.xxlargeBlack,
          textAlign: TextAlign.center,
        ),
      ),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Center(
              child: Text(
                subtitle,
                style: AppTextStyle.mediumBlack,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              onPressed: onCancel,
              child: Text(
                textCancel,
                style: AppTextStyle.mediumWhite.copyWith(
                  color: AppColor.redColor,
                ),
              ),
            ),
            TextButton(
              onPressed: onPressed,
              child: Text(
                textConfirm,
                style: AppTextStyle.mediumWhite.copyWith(
                  color: Colors.green,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
