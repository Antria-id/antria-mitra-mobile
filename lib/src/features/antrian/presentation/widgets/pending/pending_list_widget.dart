import 'dart:core';
import 'package:antria_mitra_mobile/src/features/antrian/data/models/response/antrian_list_response_model.dart';
import 'package:antria_mitra_mobile/src/features/antrian/presentation/widgets/pending/waiting_card_widget.dart';
import 'package:antria_mitra_mobile/src/shared/empty_antrian_widget.dart';
import 'package:flutter/material.dart';

class WaitingListWidget extends StatelessWidget {
  final List<AntrianListModel> waitingList;

  const WaitingListWidget({super.key, required this.waitingList});

  @override
  Widget build(BuildContext context) {
    waitingList
        .sort((a, b) => b.pesanan!.createdAt!.compareTo(a.pesanan!.createdAt!));

    List<AntrianListModel> filteredList = waitingList
        .where((antrianList) =>
            antrianList.pesanan!.antrian != null &&
            antrianList.pesanan!.antrian!.orderstatus == 'WAITING')
        .toList();

    if (filteredList.isEmpty) {
      return const Center(
        child: EmptyAntrianWidget(
          text: 'Belum ada pesanan baru',
        ),
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
            nama: pending.pesanan!.pelanggan!.nama == 'anonymous'
                ? pending.pesananId
                : pending.pesanan!.pelanggan!.nama,
            image: pending.pesanan!.pelanggan!.profilePicture,
            onTap: () {
              Navigator.pushNamed(
                context,
                '/detail-waiting',
                arguments: pending.pesananId,
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
