import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PesananCardWidget extends StatefulWidget {
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
                  widget.image,
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
                    widget.label.length > 20
                        ? '${widget.label.substring(0, 20)}...'
                        : widget.label,
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
          Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.pink.shade100,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        if (quantity > 1) {
                          setState(() {
                            quantity--;
                          });
                        } else if (quantity == 1) {
                          setState(() {
                            quantity;
                          });
                        }
                      },
                      child: const Icon(
                        Icons.remove,
                        size: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
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
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          '$quantity',
                          style: AppTextStyle.largeBlack.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Container(
                          width: 58,
                          height: 2,
                          color: Colors.green,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.pink[100],
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          if (quantity < widget.kuantitas) {
                            setState(() {
                              quantity++;
                            });
                          }
                        });
                      },
                      child: const Icon(
                        Icons.add,
                        size: 20,
                      ),
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
