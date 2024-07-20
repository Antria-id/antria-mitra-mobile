import 'package:antria_mitra_mobile/src/features/history_transaksi/presentation/bloc/riwayat_transaksi/riwayat_transaksi_bloc.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/presentation/widgets/list_transaksi_widget.dart';
import 'package:antria_mitra_mobile/src/shared/custom_appbar_widget.dart';
import 'package:antria_mitra_mobile/src/shared/empty_data_widget.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HistoryTransaksiPage extends StatelessWidget {
  const HistoryTransaksiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          RiwayatTransaksiBloc()..add(RiwayatTransaksiFetchData()),
      child: Scaffold(
        appBar: const CustomAppBarWidget(
          title: 'Riwayat Transaksi',
        ),
        backgroundColor: AppColor.backgroundColor,
        body: BlocBuilder<RiwayatTransaksiBloc, RiwayatTransaksiState>(
          builder: (context, state) {
            if (state is RiwayatTransaksiError) {
              return const Center(
                  child: EmptyDataWidget(
                text: 'Data tidak ditemukan',
              ));
            } else if (state is RiwayatTransaksiLoaded) {
              return ListTransaksiWidget(transaksiList: state.transaksiList);
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
