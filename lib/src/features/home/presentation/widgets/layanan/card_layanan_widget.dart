import 'package:flutter/material.dart';

class CardLayananWidget extends StatelessWidget {
  final String? icon;
  final String? text;
  final VoidCallback? onTap;
  const CardLayananWidget({super.key, this.icon, this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 70,
        height: 65,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10.0,
          ),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                icon!,
                width: 20,
                height: 20,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                text ?? '',
                style: const TextStyle(
                  fontSize: 8,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
