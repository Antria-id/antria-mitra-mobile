import 'package:antria_mitra_mobile/src/core/utils/constant.dart';
import 'package:antria_mitra_mobile/src/features/antrian/data/models/response/pesanan_invoice_response.dart';
import 'package:antria_mitra_mobile/src/features/antrian/presentation/widgets/selesai/pengambilan_card_widget.dart';
import 'package:antria_mitra_mobile/src/shared/empty_antrian_widget.dart';
import 'package:flutter/material.dart';

class SelesaiListWidget extends StatelessWidget {
  final List<PesananInvoiceResponseModel> pengambilanList;
  const SelesaiListWidget({Key? key, required this.pengambilanList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<PesananInvoiceResponseModel> filteredList = pengambilanList
        .where((antrianList) => antrianList.antrian!.orderstatus == 'ALLDONE')
        .toList();

    filteredList.sort((a, b) => b.updatedAt!.compareTo(a.updatedAt!));

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
            nama: pengambilan.pelanggan!.username,
            image:
                '${APIUrl.baseUrl}${APIUrl.imagePath}${pengambilan.pelanggan!.profilePicture}',
            onTap: () {
              Navigator.pushNamed(context, '/detail-pesanan-selesai',
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
