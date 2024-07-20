import 'package:antria_mitra_mobile/src/features/antrian/data/models/response/antrian_list_response_model.dart';
import 'package:antria_mitra_mobile/src/features/antrian/presentation/widgets/selesai/pengambilan_card_widget.dart';
import 'package:antria_mitra_mobile/src/shared/empty_antrian_widget.dart';
import 'package:flutter/material.dart';

class SelesaiListWidget extends StatelessWidget {
  final List<AntrianListModel> pengambilanList;
  const SelesaiListWidget({Key? key, required this.pengambilanList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final oneDayAgo = now.subtract(Duration(days: 1));
    List<AntrianListModel> filteredList = pengambilanList
        .where((antrianList) =>
            antrianList.pesanan?.antrian != null &&
            antrianList.pesanan!.antrian!.orderstatus == 'ALLDONE' &&
            antrianList.updatedAt.isAfter(oneDayAgo))
        .toList();
    filteredList.sort((a, b) => b.updatedAt.compareTo(a.updatedAt));

    if (filteredList.isEmpty) {
      return const EmptyAntrianWidget(
        text: 'Belum ada pesanan',
      );
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: ListView.separated(
        padding: const EdgeInsets.only(
          bottom: 70,
        ),
        itemCount: filteredList.length,
        itemBuilder: (context, index) {
          final pengambilan = filteredList[index];
          return SelesaiCardWidget(
            nama: pengambilan.pesanan!.pelanggan!.nama == 'anonymous'
                ? pengambilan.pesananId
                : pengambilan.pesanan!.pelanggan!.nama,
            image: pengambilan.pesanan!.pelanggan!.profilePicture,
            onTap: () {
              Navigator.pushNamed(
                context,
                '/detail-pesanan-selesai',
                arguments: pengambilan.pesananId,
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
    );
  }
}
