import 'package:antria_mitra_mobile/src/core/utils/constant.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/models/response/pesanan_response_model.dart';
import 'package:antria_mitra_mobile/src/features/antrian/presentation/widgets/process/antrian_card_widget.dart';
import 'package:antria_mitra_mobile/src/shared/empty_antrian_widget.dart';
import 'package:flutter/material.dart';

class TakeAwayListWidget extends StatelessWidget {
  final List<PesananResponseModel> antrianList;

  const TakeAwayListWidget({super.key, required this.antrianList});

  @override
  Widget build(BuildContext context) {
    List<PesananResponseModel> filteredList = antrianList
        .where(
          (antrianList) =>
              antrianList.antrian.orderstatus == 'PROCESS' &&
              antrianList.takeaway == true,
        )
        .toList();
    if (filteredList.isEmpty) {
      return const EmptyAntrianWidget(
        text: 'Belum ada antrian',
      );
    }
    List<PesananResponseModel> modifiableList = List.from(filteredList);
    modifiableList.sort((a, b) => a.createdAt.compareTo(b.createdAt));
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: ListView.separated(
        padding: const EdgeInsets.only(
          bottom: 70,
        ),
        itemCount: modifiableList.length,
        itemBuilder: (context, index) {
          final nomor = (index + 1).toString().padLeft(2, '0');
          final antrian = modifiableList[index];
          return AntrianCardWidget(
            nama: antrian.pelanggan.username,
            image:
                '${APIUrl.baseUrl}${APIUrl.imagePath}${antrian.pelanggan.profilePicture}',
            nomor: nomor,
            onTap: () {
              Navigator.pushNamed(
                context,
                '/detail-process',
                arguments: {'invoice': antrian.invoice, 'nomor': nomor},
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
