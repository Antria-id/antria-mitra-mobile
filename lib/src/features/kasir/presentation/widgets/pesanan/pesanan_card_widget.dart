import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PesananCardWidget extends StatefulWidget {
  final int id;
  final String image;
  final String label;
  final String note;
  final int price;
  final int kuantitas;
  final VoidCallback? onTap;
  const PesananCardWidget({
    super.key,
    required this.image,
    required this.label,
    required this.price,
    required this.kuantitas,
    required this.id,
    required this.onTap,
    required this.note,
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    child: Image.network(
                      widget.image,
                      width: 92,
                      height: 92,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Image.asset(
                        'assets/images/empty_image.jpg',
                        width: 80,
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 200,
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
                        style: AppTextStyle.mediumBlack.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: 200,
                        child: Visibility(
                          visible: widget.note.isNotEmpty,
                          child: Text(
                            'Catatan: ${widget.note}',
                            style: AppTextStyle.mediumBlack.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              InkWell(
                onTap: widget.onTap,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    width: 94,
                    height: 20,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.0,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 8,
                        ),
                        const Icon(
                          Icons.note_add_rounded,
                          size: 16,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Catatan',
                          style: AppTextStyle.xSmallBlack
                              .copyWith(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 60),
            child: Container(
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
          ),
        ],
      ),
    );
  }
}
