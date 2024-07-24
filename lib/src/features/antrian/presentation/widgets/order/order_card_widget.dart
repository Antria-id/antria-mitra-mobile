import 'package:antria_mitra_mobile/src/core/utils/constant.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OrderCardWidget extends StatelessWidget {
  final String? image;
  final String namaMenu;
  final String? note;
  final int price;
  final int quantity;
  const OrderCardWidget({
    super.key,
    this.image,
    required this.namaMenu,
    required this.price,
    required this.quantity,
    this.note,
  });

  @override
  Widget build(BuildContext context) {
    String formattedPrice = NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    ).format(price);
    return Container(
      width: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              child: Image.network(
                '${APIUrl.baseUrl}${APIUrl.imagePath}${image!}',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Image.asset(
                    'assets/images/empty_image.jpg',
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        namaMenu,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          gradient: AppColor.gradientTopBottomColor,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            'X$quantity',
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Note: ${note!.isNotEmpty ? note : "-"}',
                      style: AppTextStyle.smallGrey,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    formattedPrice,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
