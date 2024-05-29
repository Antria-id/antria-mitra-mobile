import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:flutter/material.dart';

class AntrianCardWidget extends StatelessWidget {
  final String? image;
  final String? nama;
  final String nomor;
  final VoidCallback? onTap;
  const AntrianCardWidget(
      {super.key, this.image, this.nama, required this.nomor, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 360,
        height: 84,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(image!),
                    onBackgroundImageError: (exception, stackTrace) {
                      const AssetImage('assets/icons/user-empty.png');
                    },
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    nama ?? 'Anonym',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Container(
              width: 82,
              height: 86,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                gradient: AppColor.gradientTopBottomColor,
              ),
              child: Center(
                child: Text(
                  nomor,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
