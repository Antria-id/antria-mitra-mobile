import 'package:antria_mitra_mobile/src/features/history_transaksi/data/models/detail_transaksi_model.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/presentation/widgets/card_order.dart';
import 'package:flutter/material.dart';

class ListCardOrder extends StatelessWidget {
  final List<Oderlist> orderList;
  const ListCardOrder({super.key, required this.orderList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.separated(
        padding: EdgeInsets.only(top: 20, bottom: 20),
        itemBuilder: (context, index) {
          final order = orderList[index];
          return CardOrder(
            namaProduk: order.produk!.namaProduk!,
            deskripsi: order.produk!.deskripsiProduk ?? '',
            hargaProduk: order.produk!.harga!,
            quantity: order.quantity!,
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 20,
          );
        },
        itemCount: orderList.length,
      ),
    );
  }
}
