import 'package:antria_mitra_mobile/src/core/utils/constant.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CardUlasanWidget extends StatelessWidget {
  final String imageUrl;
  final String username;
  final String comments;
  final dynamic timeUpload;
  final double rating;

  const CardUlasanWidget({
    super.key,
    required this.imageUrl,
    required this.username,
    required this.comments,
    required this.timeUpload,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    final String formattedTime =
        (timeUpload is String) ? timeUpload : getTimeAgo(timeUpload);

    return Container(
      width: 354,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: AppColor.primaryColor,
                  backgroundImage: imageUrl.isNotEmpty
                      ? NetworkImage(
                          '${APIUrl.baseUrl}${APIUrl.imagePath}$imageUrl',
                        )
                      : const AssetImage('assets/icons/user-empty.png')
                          as ImageProvider,
                  radius: 25,
                ),
                const SizedBox(
                  width: 14,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 14,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            username,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            formattedTime,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      RatingBarIndicator(
                        rating: rating / 10.0,
                        direction: Axis.horizontal,
                        itemCount: 5,
                        itemSize: 20.0,
                        itemBuilder: (context, index) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                comments,
                textAlign: TextAlign.justify,
                style: AppTextStyle.smallBlack.copyWith(
                  height: 2,
                ),
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

  String getTimeAgo(DateTime? timestamp) {
    if (timestamp == null) {
      return 'Unknown time';
    }

    DateTime currentTime = DateTime.now();
    Duration difference = currentTime.difference(timestamp);

    if (difference.inMinutes < 1) {
      return 'Baru saja';
    } else if (difference.inHours < 1) {
      int minutes = difference.inMinutes;
      return '$minutes menit${minutes > 1 ? '' : ''} lalu';
    } else if (difference.inDays < 1) {
      int hours = difference.inHours;
      return '$hours jam${hours > 1 ? '' : ''} lalu';
    } else if (difference.inDays < 7) {
      int days = difference.inDays;
      return '$days hari${days > 1 ? '' : ''} lalu';
    } else if (difference.inDays < 30) {
      int weeks = (difference.inDays / 7).floor();
      return '$weeks minggu${weeks > 1 ? '' : ''} lalu';
    } else if (difference.inDays < 365) {
      int months = (difference.inDays / 30).floor();
      return '$months bulan${months > 1 ? '' : ''} lalu';
    } else {
      int years = (difference.inDays / 365).floor();
      return '$years tahun${years > 1 ? '' : ''} lalu';
    }
  }
}
