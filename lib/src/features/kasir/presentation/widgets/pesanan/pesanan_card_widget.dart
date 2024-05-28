import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PesananCardWidget extends StatelessWidget {
  final String image;
  final String label;
  final int price;
  final int quantity;
  const PesananCardWidget({
    super.key,
    required this.image,
    required this.label,
    required this.price,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    String formattedPrice = NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp',
      decimalDigits: 0,
    ).format(price);
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
                child: Image.network(
                  image,
                  width: 90,
                  height: 90,
                  errorBuilder: (context, error, stackTrace) {
                    return Image.asset(
                      'assets/images/empty_image.jpg',
                      width: 90,
                      height: 90,
                    );
                  },
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label.length > 20 ? '${label.substring(0, 20)}...' : label,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    formattedPrice,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xff0D1039),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: 58,
            height: 32,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
              color: Colors.pink[100],
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 4,
                ),
                Text(
                  '$quantity',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xff616161),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Container(
                  width: 58,
                  height: 1,
                  color: Colors.green,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
