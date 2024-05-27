import 'package:antria_mitra_mobile/src/features/history_transaksi/presentation/widgets/transaksi_card_widget.dart';
import 'package:antria_mitra_mobile/src/shared/custom_appbar_widget.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:flutter/material.dart';

class HistoryTransaksiPage extends StatelessWidget {
  const HistoryTransaksiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBarWidget(
        title: 'Riwayat Transaksi',
      ),
      backgroundColor: AppColor.backgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: TransaksiCardWidget(),
      ),
    );
  }
}
