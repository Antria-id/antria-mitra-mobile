import 'package:flutter/material.dart';

class AppColor {
  static const primaryColor = Color(0xff953684);
  static const backgroundColor = Color(0xffF4F4F4);
  static const dividerColor = Color(0xffD9D9D9);
  static const redColor = Color(0xffFF0000);
  static const blackColor = Color(0xff000000);
  static const whiteColor = Color(0xffffffff);
  static const greyColor = Color(0xffBABABA);
  static const transparent = Colors.transparent;
  static const priceColor = Color(0xff0D1039);
  static Gradient gradientTopColor = const LinearGradient(
    colors: [
      Color(0xff953684),
      Color(0xffE74C4C),
    ],
    begin: Alignment.topLeft,
    end: Alignment.topRight,
  );

  static Gradient gradientTopBottomColor = const LinearGradient(
    colors: [
      Color(0xff953684),
      Color(0xffE74C4C),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
