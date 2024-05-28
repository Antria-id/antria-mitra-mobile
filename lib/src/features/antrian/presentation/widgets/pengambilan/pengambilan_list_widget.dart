import 'package:antria_mitra_mobile/src/core/utils/constant.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/models/response/pesanan_response_model.dart';
import 'package:antria_mitra_mobile/src/features/antrian/presentation/widgets/pengambilan/pengambilan_card_widget.dart';
import 'package:antria_mitra_mobile/src/shared/empty_antrian_widget.dart';
import 'package:flutter/material.dart';

class PengambilanListWidget extends StatelessWidget {
  final List<PesananResponseModel> pengambilanList;
  const PengambilanListWidget({super.key, required this.pengambilanList});

  @override
  Widget build(BuildContext context) {
    List<PesananResponseModel> filteredList = pengambilanList
        .where((antrianList) => antrianList.antrian.orderstatus == 'CONFIRM')
        .toList();
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
          return PengambilanCardWidget(
            nama: pengambilan.pelanggan.username,
            image:
                '${APIUrl.baseUrl}${APIUrl.imagePath}${pengambilan.pelanggan.profilePicture}',
            onTap: () {
              Navigator.pushNamed(context, '/detail-pengambilan',
                  arguments: pengambilan.invoice);
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
