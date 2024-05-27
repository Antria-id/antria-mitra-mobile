import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData appTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    scrolledUnderElevation: 0,
    elevation: 0,
    shadowColor: AppColor.transparent,
    centerTitle: false,
    backgroundColor: AppColor.whiteColor,
  ),
  fontFamily: GoogleFonts.poppins().fontFamily,
  inputDecorationTheme: InputDecorationTheme(
    suffixIconColor: AppColor.blackColor,
    hintStyle: AppTextStyle.mediumGrey,
    filled: true,
    floatingLabelBehavior: FloatingLabelBehavior.never,
    fillColor: Colors.grey[300],
    contentPadding: const EdgeInsets.symmetric(
      vertical: 10.0,
      horizontal: 12.0,
    ),
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.all(
        Radius.circular(8),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColor.greyColor),
      borderRadius: BorderRadius.circular(8),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColor.redColor, width: 1),
      borderRadius: BorderRadius.circular(8),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColor.redColor, width: 1),
      borderRadius: BorderRadius.circular(8),
    ),
  ),
);
