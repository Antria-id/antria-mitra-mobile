import 'package:antria_mitra_mobile/src/features/profile/presentation/bloc/ulasan/ulasan_bloc.dart';
import 'package:antria_mitra_mobile/src/features/profile/presentation/widgets/ulasan/ulasan_list_widget.dart';
import 'package:antria_mitra_mobile/src/shared/custom_appbar_widget.dart';
import 'package:antria_mitra_mobile/src/shared/empty_data_widget.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rating_summary/rating_summary.dart';

class UlasanPage extends StatelessWidget {
  const UlasanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UlasanBloc()..add(UlasanFetchData()),
      child: Scaffold(
        appBar: CustomAppBarWidget(
          title: 'Rating & Ulasan',
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: AppColor.backgroundColor,
        body: BlocBuilder<UlasanBloc, UlasanState>(
          builder: (context, state) {
            if (state is UlasanError) {
              return const Center(
                child: EmptyDataWidget(
                  text: 'Data tidak ditemukan',
                ),
              );
            } else if (state is UlasanLoaded) {
              final ulasan = state.ulasan;
              int totalRatings = ulasan.length;
              double sumRatings = 0.0;
              int counterFiveStars = 0;
              int counterFourStars = 0;
              int counterThreeStars = 0;
              int counterTwoStars = 0;
              int counterOneStars = 0;

              for (var review in ulasan) {
                double rating = review.rating! / 10.0;
                sumRatings += rating;
                if (rating == 5) {
                  counterFiveStars++;
                } else if (rating == 4.5) {
                  counterFourStars++;
                } else if (rating == 4) {
                  counterFourStars++;
                } else if (rating == 3.5) {
                  counterThreeStars++;
                } else if (rating == 3) {
                  counterThreeStars++;
                } else if (rating == 2.5) {
                  counterTwoStars++;
                } else if (rating == 2) {
                  counterTwoStars++;
                } else if (rating == 1.5) {
                  counterOneStars++;
                } else if (rating == 1) {
                  counterOneStars++;
                }
              }

              double averageRating =
                  totalRatings > 0 ? sumRatings / totalRatings + 0.1 : 0;

              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: AppColor.whiteColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 20,
                        ),
                        child: RatingSummary(
                          counter: totalRatings,
                          average: averageRating,
                          counterFiveStars: counterFiveStars,
                          counterFourStars: counterFourStars,
                          counterThreeStars: counterThreeStars,
                          counterTwoStars: counterTwoStars,
                          counterOneStars: counterOneStars,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Rating & Ulasan Pelanggan',
                      style: AppTextStyle.mediumBlack.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                    Expanded(
                      child: ListUlasanWidget(
                        ulasanList: ulasan,
                      ),
                    ),
                  ],
                ),
              );
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
