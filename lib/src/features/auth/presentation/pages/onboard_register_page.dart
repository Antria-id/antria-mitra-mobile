import 'package:antria_mitra_mobile/src/shared/custom_button_widget.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class OnboardRegister extends StatelessWidget {
  const OnboardRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 127,
              height: 39.46,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Center(
            child: Image.asset(
              'assets/images/onboard.jpg',
              width: 250,
              height: 250,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
            child: Text(
              'Daftarkan usaha serta kepemilikan usaha anda dengan mengisi data untuk pendaftaran Mitra Antria',
              style: AppTextStyle.largeGrey,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
            child: CustomButtonWidget(
              circularButton: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              size: const Size(330, 47),
              child: Container(
                decoration: BoxDecoration(
                  gradient: AppColor.gradientTopColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  height: 47,
                  alignment: Alignment.center,
                  child: const Text(
                    'Daftar Sekarang',
                    style: AppTextStyle.largeWhite,
                  ),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/sign-up',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
