import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PesananCardWidget extends StatefulWidget {
  final int productId;
  final String image;
  final String label;
  final int price;
  final int kuantitas;
  const PesananCardWidget({
    super.key,
    required this.image,
    required this.label,
    required this.price,
    required this.kuantitas,
    required this.productId,
  });

  @override
  State<PesananCardWidget> createState() => _PesananCardWidgetState();
}

class _PesananCardWidgetState extends State<PesananCardWidget>
    with AutomaticKeepAliveClientMixin {
  late int quantity;
  @override
  void initState() {
    super.initState();
    quantity = widget.kuantitas;
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    String formattedPrice = NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    ).format(widget.price);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                child: Image.network(
                  widget.image,
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Image.asset(
                    'assets/images/empty_image.jpg',
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 100,
                    child: Text(
                      widget.label,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 10),
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
          Column(
            children: [
              const SizedBox(height: 10),
              Container(
                width: 58,
                height: 32,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  color: AppColor.dividerColor,
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 4),
                    Text(
                      '$quantity',
                      style: AppTextStyle.largeBlack.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Container(
                      width: 58,
                      height: 2,
                      color: Colors.green,
                    )
                  ],
                ),
              ),
              const SizedBox(width: 10),
            ],
          )
        ],
      ),
    );
  }
}
