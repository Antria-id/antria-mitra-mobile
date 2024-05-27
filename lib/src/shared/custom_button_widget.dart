import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final Widget child;
  final Size? size;
  final Color? backgroundColor;
  final OutlinedBorder? circularButton;
  final VoidCallback onPressed;
  const CustomButtonWidget({
    super.key,
    this.circularButton,
    this.size,
    required this.child,
    required this.onPressed,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        minimumSize: size,
        padding: EdgeInsets.zero,
        shape: circularButton,
      ),
      child: child,
    );
  }
}
