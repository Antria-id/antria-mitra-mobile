import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:flutter/material.dart';

class CustomButtonOrder extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback? onTap;

  const CustomButtonOrder({
    super.key,
    required this.title,
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 34,
        width: 280,
        decoration: BoxDecoration(
          color: isSelected ? AppColor.primaryColor : AppColor.whiteColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: isSelected ? AppColor.whiteColor : AppColor.primaryColor,
              fontSize: 12,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
    );
  }
}
