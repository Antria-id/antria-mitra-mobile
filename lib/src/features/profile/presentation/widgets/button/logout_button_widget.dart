import 'package:antria_mitra_mobile/src/features/profile/presentation/widgets/dialog/logout_dialog_widget.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class LogoutButtonWidget extends StatelessWidget {
  const LogoutButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return const LogoutDialogWidget();
          },
        );
      },
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(350, 70),
        backgroundColor: Colors.red,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.logout_rounded,
            color: Colors.white,
            size: 20,
          ),
          const SizedBox(width: 14),
          Text(
            'Logout',
            style: AppTextStyle.mediumWhite.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
