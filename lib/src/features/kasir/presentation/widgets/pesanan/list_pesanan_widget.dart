import 'package:antria_mitra_mobile/src/features/kasir/presentation/widgets/pesanan/pesanan_card_widget.dart';
import 'package:flutter/material.dart';

class ListPesananWidget extends StatelessWidget {
  ListPesananWidget({
    super.key,
  });

  final List<Map<String, dynamic>> cartList = [
    {
      'image': '',
      'namaProduct': 'kopi',
      'harga': 10000,
      'kuantitas': 3,
    },
    {
      'image': '',
      'namaProduct': 'kopi',
      'harga': 10000,
      'kuantitas': 3,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: ListView.separated(
        itemCount: cartList.length,
        itemBuilder: (context, index) {
          final cart = cartList[index];
          return PesananCardWidget(
            image: cart['image'],
            label: cart['namaProduct'],
            price: cart['harga'],
            kuantitas: cart['kuantitas'],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 10,
          );
        },
      ),
    );
  }
}
