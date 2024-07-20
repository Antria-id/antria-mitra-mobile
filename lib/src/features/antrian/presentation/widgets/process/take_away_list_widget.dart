import 'package:antria_mitra_mobile/src/features/antrian/data/models/response/antrian_list_response_model.dart';
import 'package:antria_mitra_mobile/src/features/antrian/presentation/widgets/process/antrian_card_widget.dart';
import 'package:antria_mitra_mobile/src/shared/empty_antrian_widget.dart';
import 'package:flutter/material.dart';

class TakeAwayListWidget extends StatelessWidget {
  final List<AntrianListModel> antrianList;

  const TakeAwayListWidget({super.key, required this.antrianList});

  @override
  Widget build(BuildContext context) {
    List<AntrianListModel> filteredList = antrianList
        .where((antrianList) =>
            antrianList.pesanan!.antrian != null &&
            antrianList.pesanan!.antrian!.orderstatus == 'PROCESS' &&
            antrianList.pesanan!.takeaway == true)
        .toList();

    List<AntrianListModel> nomorList = antrianList
        .where((antrianList) =>
            antrianList.pesanan!.antrian != null &&
            antrianList.pesanan!.antrian!.orderstatus == 'PROCESS')
        .toList();

    if (filteredList.isEmpty) {
      return const EmptyAntrianWidget(
        text: 'Belum ada antrian',
      );
    }

    List<AntrianListModel> modifiableList = List.from(filteredList);
    modifiableList.sort((a, b) => b.createdAt.compareTo(a.createdAt));

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: ListView.separated(
        padding: const EdgeInsets.only(
          bottom: 70,
        ),
        itemCount: modifiableList.length,
        itemBuilder: (context, index) {
          final antrian = modifiableList[index];
          String nomor =
              (nomorList.indexOf(antrian) + 1).toString().padLeft(2, '0');
          return AntrianCardWidget(
            nama: antrian.pesanan!.pelanggan!.nama == 'anonymous'
                ? antrian.pesananId
                : antrian.pesanan!.pelanggan!.nama,
            image: antrian.pesanan!.pelanggan!.profilePicture,
            nomor: nomor,
            onTap: () {
              Navigator.pushNamed(
                context,
                '/detail-process',
                arguments: {
                  'invoice': antrian.pesananId,
                  'nomor': nomor,
                },
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
