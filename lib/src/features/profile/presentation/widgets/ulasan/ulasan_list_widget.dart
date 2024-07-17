import 'package:antria_mitra_mobile/src/features/profile/data/models/response/ulasan_response.dart';
import 'package:antria_mitra_mobile/src/features/profile/presentation/widgets/card/card_ulasan_widget.dart';
import 'package:antria_mitra_mobile/src/shared/empty_data_widget.dart';
import 'package:flutter/material.dart';

class ListUlasanWidget extends StatelessWidget {
  final List<UlasanResponse> ulasanList;
  const ListUlasanWidget({
    super.key,
    required this.ulasanList,
  });

  @override
  Widget build(BuildContext context) {
    if (ulasanList.isEmpty) {
      return const Center(child: EmptyDataWidget());
    }
    return SizedBox(
      height: double.infinity,
      child: ListView.separated(
        itemCount: ulasanList.length,
        itemBuilder: (context, index) {
          final ulasan = ulasanList[index];
          return CardUlasanWidget(
            imageUrl: ulasan.reviewer!.profilePicture!,
            username: ulasan.reviewer!.username!,
            comments: ulasan.komentar!,
            timeUpload: ulasan.updatedAt,
            rating: ulasan.rating!.toDouble(),
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
