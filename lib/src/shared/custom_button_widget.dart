import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final Widget child;
  final Size? size;
  final Color? backgroundColor;
  final OutlinedBorder? circularButton;
  final VoidCallback onPressed;
  final BorderSide? borderSide;
  final Color? borderColor;

  const CustomButtonWidget({
    Key? key,
    this.circularButton,
    this.size,
    required this.child,
    required this.onPressed,
    this.backgroundColor,
    this.borderSide,
    this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        minimumSize: size,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: circularButton is RoundedRectangleBorder
              ? (circularButton as RoundedRectangleBorder).borderRadius
              : BorderRadius.zero,
          side: borderSide ?? BorderSide.none,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(color: borderColor ?? Colors.transparent),
          borderRadius: circularButton is RoundedRectangleBorder
              ? (circularButton as RoundedRectangleBorder).borderRadius
              : BorderRadius.zero,
        ),
        child: child,
      ),
    );
  }
}
