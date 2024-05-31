import 'package:antria_mitra_mobile/src/core/utils/constant.dart';
import 'package:antria_mitra_mobile/src/features/home/presentation/bloc/pesanan_berlangsung/bloc/pesanan_berlangsung_bloc.dart';
import 'package:antria_mitra_mobile/src/features/home/presentation/bloc/user/user_bloc.dart';
import 'package:antria_mitra_mobile/src/features/home/presentation/widgets/daily_income_widget.dart';
import 'package:antria_mitra_mobile/src/features/home/presentation/widgets/jadwal_widget.dart';
import 'package:antria_mitra_mobile/src/features/home/presentation/widgets/pesanan_berlangsung/list_pesanan_berlangsung_widget.dart';
import 'package:antria_mitra_mobile/src/shared/failed_fetch_data_widget.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ExpandableFabState> fabKey =
        GlobalKey<ExpandableFabState>();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UserBloc()
            ..add(
              const UserFetchDataEvent(),
            ),
        ),
        BlocProvider(
          create: (context) => PesananBerlangsungBloc()
            ..add(
              const GetPesananBerlangsungFetchDataEvent(),
            ),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: AppColor.gradientTopColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(26),
                bottomRight: Radius.circular(26),
              ),
            ),
            child: SafeArea(
              child: BlocBuilder<UserBloc, UserState>(
                builder: (context, state) {
                  if (state is UserErrorState) {
                    return Center(
                      child: Text('Error: ${state.message}'),
                    );
                  } else if (state is UserLoadedState) {
                    final profileData = state.user;
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 22,
                            vertical: 18,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Selamat Datang',
                                    style: AppTextStyle.xlargeWhite.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    profileData.username!,
                                    style: AppTextStyle.mediumWhite,
                                  ),
                                ],
                              ),
                              CircleAvatar(
                                radius: 22,
                                backgroundImage: profileData.picture!.isNotEmpty
                                    ? NetworkImage(
                                        '${APIUrl.baseUrl}${APIUrl.imagePath}${profileData.picture}',
                                      )
                                    : const NetworkImage(
                                        'https://icon-library.com/images/avatar-icon-images/avatar-icon-images-4.jpg',
                                      ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
          ),
        ),
        backgroundColor: AppColor.backgroundColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const DailyIncomeWidget(),
                const SizedBox(
                  height: 20,
                ),
                const JadwalWidget(),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Pesanan Berlangsung',
                  style: AppTextStyle.mediumBlack
                      .copyWith(fontWeight: FontWeight.w800),
                ),
                const SizedBox(
                  height: 20,
                ),
                BlocBuilder<PesananBerlangsungBloc, PesananBerlangsungState>(
                  builder: (context, state) {
                    if (state is PesananBerlangsungErrorState) {
                      return const Padding(
                        padding: EdgeInsets.symmetric(vertical: 60),
                        child: Center(
                          child: FailedFetchDataWidget(),
                        ),
                      );
                    } else if (state is PesananBerlangsungLoadedState) {
                      return ListPesananBerlangsungWidget(
                        pesananList: state.pesananList,
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: ExpandableFab.location,
        floatingActionButton: ExpandableFab(
          key: fabKey,
          type: ExpandableFabType.up,
          pos: ExpandableFabPos.right,
          distance: 60,
          openButtonBuilder: RotateFloatingActionButtonBuilder(
            backgroundColor: AppColor.primaryColor,
            foregroundColor: AppColor.whiteColor,
            child: const Icon(
              Icons.menu_rounded,
              size: 30,
            ),
            fabSize: ExpandableFabSize.regular,
            shape: const CircleBorder(),
            angle: 3.14 * 2,
          ),
          closeButtonBuilder: FloatingActionButtonBuilder(
            size: 56,
            builder: (BuildContext context, void Function()? onPressed,
                Animation<double> progress) {
              return IconButton(
                onPressed: onPressed,
                icon: const Icon(
                  Icons.close,
                  size: 40,
                ),
              );
            },
          ),
          children: [
            FloatingActionButton.small(
              heroTag: null,
              backgroundColor: AppColor.whiteColor,
              shape: const CircleBorder(),
              child: Image.asset(
                'assets/icons/menu.png',
                width: 20,
                height: 20,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/kasir');
                fabKey.currentState?.toggle();
              },
            ),
            FloatingActionButton.small(
              heroTag: null,
              backgroundColor: AppColor.whiteColor,
              shape: const CircleBorder(),
              child: Image.asset(
                'assets/icons/queue.png',
                width: 20,
                height: 20,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/antrian');
                fabKey.currentState?.toggle();
              },
            ),
            FloatingActionButton.small(
              heroTag: null,
              backgroundColor: AppColor.whiteColor,
              shape: const CircleBorder(),
              child: Image.asset(
                'assets/icons/booking.png',
                width: 20,
                height: 20,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/jadwal');
                fabKey.currentState?.toggle();
              },
            ),
          ],
        ),
      ),
    );
  }
}
