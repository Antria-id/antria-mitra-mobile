import 'package:antria_mitra_mobile/src/features/home/presentation/widgets/layanan/card_layanan_widget.dart';
import 'package:flutter/material.dart';

class LayananListWidget extends StatelessWidget {
  final List<Map<String, dynamic>> layananList = [
    {
      'text': 'Kasir',
      'icon': 'assets/icons/menu.png',
      'route': '/kasir',
    },
    {
      'text': 'Kelola Jadwal',
      'icon': 'assets/icons/booking.png',
      'route': '/jadwal'
    },
    {
      'text': 'Kelola Antrian',
      'icon': 'assets/icons/queue.png',
      'route': '/antrian'
    },
  ];

  LayananListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: layananList.length,
        itemBuilder: (context, index) {
          final layanan = layananList[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: CardLayananWidget(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  layanan['route'],
                );
              },
              text: layanan['text'],
              icon: layanan['icon'],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 26,
          );
        },
      ),
    );
  }
}
