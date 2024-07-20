import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class DashboardManagementWidget extends StatelessWidget {
  const DashboardManagementWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 300,
        ),
        child: ElevatedButton(
          onPressed: () async {
            Navigator.pushNamed(context, '/webview-dashboard');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            fixedSize: const Size(350, 70),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/images/antria_logo.png',
                width: 40,
                height: 40,
              ),
              const SizedBox(
                width: 30,
              ),
              Text(
                'Dashboard Management',
                style: AppTextStyle.mediumBlack.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
