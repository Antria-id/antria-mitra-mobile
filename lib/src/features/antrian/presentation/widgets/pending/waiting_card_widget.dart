import 'package:antria_mitra_mobile/src/core/utils/constant.dart';
import 'package:flutter/material.dart';

class WaitingCardWidget extends StatelessWidget {
  final String? image;
  final String? nama;
  final VoidCallback? onTap;
  const WaitingCardWidget({
    super.key,
    this.image,
    this.nama,
    this.onTap,
  });

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
                    backgroundImage: image!.isNotEmpty
                        ? NetworkImage(
                            '${APIUrl.baseUrl}${APIUrl.imagePath}${image!}',
                          )
                        : const AssetImage(
                            'assets/icons/user-empty.png',
                          ) as ImageProvider,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          nama ?? 'Anonym',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Menunggu Persetujuan',
                          style: TextStyle(
                            color: Colors.yellow[700],
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
