import 'package:antria_mitra_mobile/src/core/utils/constant.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/models/response/pesanan_response_model.dart';
import 'package:antria_mitra_mobile/src/features/antrian/presentation/widgets/pending/waiting_card_widget.dart';
import 'package:antria_mitra_mobile/src/shared/empty_antrian_widget.dart';
import 'package:flutter/material.dart';

class WaitingListWidget extends StatelessWidget {
  final List<PesananResponseModel> waitingList;
  const WaitingListWidget({super.key, required this.waitingList});

  @override
  Widget build(BuildContext context) {
    List<PesananResponseModel> filteredList = waitingList
        .where((antrianList) => antrianList.antrian.orderstatus == 'WAITING')
        .toList();
    if (filteredList.isEmpty) {
      return const EmptyAntrianWidget(
        text: 'Belum ada pesanan baru',
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
          final pending = filteredList[index];
          return WaitingCardWidget(
            nama: pending.pelanggan.username,
            image:
                '${APIUrl.baseUrl}${APIUrl.imagePath}${pending.pelanggan.profilePicture}',
            onTap: () {
              Navigator.pushNamed(
                context,
                '/detail-waiting',
                arguments: pending.invoice,
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
