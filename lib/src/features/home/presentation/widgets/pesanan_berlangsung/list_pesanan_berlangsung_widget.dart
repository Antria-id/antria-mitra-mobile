import 'package:antria_mitra_mobile/src/features/home/data/models/pesanan_berlangsung/pesanan_berlangsung_model.dart';
import 'package:antria_mitra_mobile/src/features/home/presentation/widgets/pesanan_berlangsung/card_pesanan_berlangsung_widget.dart';
import 'package:antria_mitra_mobile/src/shared/empty_data_widget.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:flutter/material.dart';

class ListPesananBerlangsungWidget extends StatelessWidget {
  final List<PesananBerlangsungModel> pesananList;

  const ListPesananBerlangsungWidget({super.key, required this.pesananList});

  @override
  Widget build(BuildContext context) {
    final filteredList = pesananList
        .where((pesanan) => pesanan.antrian!.orderstatus != 'ALLDONE')
        .toList();

    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
        color: Colors.white,
      ),
      child: filteredList.isEmpty
          ? const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Center(
                child: EmptyDataWidget(),
              ),
            )
          : SizedBox(
              height: MediaQuery.of(context).size.height * 0.38,
              child: ListView.separated(
                padding: const EdgeInsets.only(bottom: 10),
                physics: const BouncingScrollPhysics(),
                itemCount: filteredList.length,
                itemBuilder: (context, index) {
                  final pesanan = filteredList[index];
                  return CardPesananBerlangsungWidget(
                    invoice: pesanan.invoice,
                    status: pesanan.antrian!.orderstatus,
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(
                    color: AppColor.dividerColor,
                    thickness: 0.5,
                  );
                },
              ),
            ),
    );
  }
}
