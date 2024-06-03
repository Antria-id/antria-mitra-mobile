import 'package:antria_mitra_mobile/src/features/antrian/data/models/response/pesanan_invoice_response.dart';
import 'package:antria_mitra_mobile/src/features/antrian/presentation/widgets/order/order_card_widget.dart';
import 'package:flutter/material.dart';

class OrderListWidget extends StatelessWidget {
  final List<PesananInvoiceResponseModel> orderList;

  const OrderListWidget({Key? key, required this.orderList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final allOrders = orderList.expand((invoice) => invoice.oderlist!).toList();
    return SizedBox(
      height: 210,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: allOrders.length,
        itemBuilder: (context, index) {
          final order = allOrders[index];
          final produk = order.produk;
          if (produk == null) {
            return const SizedBox.shrink();
          }
          return OrderCardWidget(
            image: produk.gambar,
            price: produk.harga!,
            namaMenu: produk.namaProduk!,
            quantity: order.quantity!,
            note: order.note,
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 16,
          );
        },
      ),
    );
  }
}
