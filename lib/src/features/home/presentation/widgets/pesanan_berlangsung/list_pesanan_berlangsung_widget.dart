import 'package:antria_mitra_mobile/src/features/home/data/models/pesanan_berlangsung/pesanan_berlangsung_model.dart';
import 'package:antria_mitra_mobile/src/features/home/presentation/widgets/pesanan_berlangsung/card_pesanan_berlangsung_widget.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:flutter/material.dart';

class ListPesananBerlangsungWidget extends StatelessWidget {
  final List<PesananBerlangsungModel> pesananList;

  const ListPesananBerlangsungWidget({super.key, required this.pesananList});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
        color: Colors.white,
      ),
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemCount: pesananList.length,
        itemBuilder: (context, index) {
          final pesanan = pesananList[index];
          return CardPesananBerlangsungWidget(
            invoice: pesanan.invoice,
            status: pesanan.status,
            total: '+Rp 65.000',
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            color: AppColor.dividerColor,
            thickness: 0.5,
          );
        },
      ),
    );
  }
}
