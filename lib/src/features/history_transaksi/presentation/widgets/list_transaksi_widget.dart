import 'package:antria_mitra_mobile/src/features/history_transaksi/data/models/riwayat_transaksi_response_model.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/presentation/widgets/transaksi_card_widget.dart';
import 'package:antria_mitra_mobile/src/shared/empty_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ListTransaksiWidget extends StatelessWidget {
  final List<RiwayatTransaksiResponse> transaksiList;
  const ListTransaksiWidget({super.key, required this.transaksiList});

  String formatDate(DateTime? date) {
    if (date == null) return '';
    final DateFormat formatter = DateFormat('dd-MM-yyyy');
    return formatter.format(date);
  }

  int income(List<Oderlist> orders) {
    int totalPrice = 0;
    for (var orderItem in orders) {
      totalPrice += (orderItem.quantity! * orderItem.produk!.harga!);
    }
    totalPrice += 1000;
    return totalPrice;
  }

  @override
  Widget build(BuildContext context) {
    List<RiwayatTransaksiResponse> filteredList = transaksiList
        .where(
          (transaksiList) =>
              transaksiList.antrian != null &&
              transaksiList.antrian!.orderstatus == 'ALLDONE',
        )
        .toList();

    filteredList.sort((a, b) => b.createdAt!.compareTo(a.createdAt!));
    if (filteredList.isEmpty) {
      return const Center(
        child: EmptyDataWidget(
          text: 'Data tidak ditemukan',
        ),
      );
    }
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: ListView.separated(
          padding: const EdgeInsets.only(
            bottom: 70,
          ),
          itemCount: filteredList.length,
          itemBuilder: (context, index) {
            final transaksi = filteredList[index];
            return TransaksiCardWidget(
              invoice: transaksi.invoice!,
              tanggal: formatDate(transaksi.createdAt),
              income: income(transaksi.oderlist!),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/detail-transaksi',
                  arguments: transaksi.invoice,
                );
              },
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              height: 20,
            );
          },
        ),
      ),
    );
  }
}
