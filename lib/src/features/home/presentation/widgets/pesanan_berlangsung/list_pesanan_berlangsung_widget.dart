import 'package:antria_mitra_mobile/src/features/home/data/models/pesanan_model.dart';
import 'package:antria_mitra_mobile/src/features/home/presentation/widgets/pesanan_berlangsung/card_pesanan_berlangsung_widget.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ListPesananBerlangsungWidget extends StatelessWidget {
  final List<PesananModel> pesananList;

  const ListPesananBerlangsungWidget({super.key, required this.pesananList});

  @override
  Widget build(BuildContext context) {
    final filteredList = pesananList
        .where((pesanan) =>
            pesanan.antrian != null &&
            pesanan.antrian!.orderstatus == 'PROCESS')
        .toList();

    filteredList.sort((a, b) {
      final createdAtA = a.antrian!.createdAt!;
      final createdAtB = b.antrian!.createdAt!;
      return createdAtA.compareTo(createdAtB);
    });

    String formatDate(DateTime? date) {
      if (date == null) return '';
      final DateFormat formatter = DateFormat('dd-MM-yyyy, HH:mm');
      return formatter.format(date);
    }

    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
        color: Colors.white,
      ),
      child: filteredList.isEmpty
          ? Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.hourglass_full_rounded,
                      size: 80,
                      color: AppColor.primaryColor,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Pesanan Kosong',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Saat ini tidak ada pesanan yang sedang diproses.',
                      textAlign: TextAlign.center,
                      style: AppTextStyle.mediumGrey,
                    ),
                  ],
                ),
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
                  String nomor = (filteredList.indexOf(pesanan) + 1)
                      .toString()
                      .padLeft(2, '0');
                  return CardPesananBerlangsungWidget(
                    invoice: pesanan.invoice,
                    status: pesanan.antrian!.orderstatus,
                    tanggal: formatDate(pesanan.antrian!.createdAt),
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/detail-process',
                        arguments: {
                          'invoice': pesanan.invoice,
                          'nomor': nomor,
                        },
                      );
                    },
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
