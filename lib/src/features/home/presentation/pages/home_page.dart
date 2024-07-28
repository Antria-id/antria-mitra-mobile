import 'package:antria_mitra_mobile/src/core/utils/constant.dart';
import 'package:antria_mitra_mobile/src/features/antrian/presentation/bloc/update_status_pesanan/update_status_pesanan_bloc.dart';
import 'package:antria_mitra_mobile/src/features/home/presentation/bloc/pesanan_mitra/pesanan_mitra_bloc.dart';
import 'package:antria_mitra_mobile/src/features/home/presentation/bloc/user/user_bloc.dart';
import 'package:antria_mitra_mobile/src/features/home/presentation/widgets/daily_income_widget.dart';
import 'package:antria_mitra_mobile/src/features/home/presentation/widgets/jadwal_widget.dart';
import 'package:antria_mitra_mobile/src/features/home/presentation/widgets/pesanan_berlangsung/list_pesanan_berlangsung_widget.dart';
import 'package:antria_mitra_mobile/src/features/kasir/presentation/bloc/orderlist/order_list_bloc.dart';
import 'package:antria_mitra_mobile/src/shared/failed_fetch_data_widget.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UserBloc()
            ..add(
              UserFetchData(),
            ),
        ),
        BlocProvider(
          create: (context) => PesananMitraBloc()
            ..add(
              PesananMitraFetchData(),
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
                  if (state is UserError) {
                    return Center(
                      child: Text('Failed Fetch Data'),
                    );
                  } else if (state is UserLoaded) {
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
                                    profileData.username,
                                    style: AppTextStyle.mediumWhite,
                                  ),
                                ],
                              ),
                              CircleAvatar(
                                radius: 22,
                                backgroundImage:
                                    profileData.profilePicture.isNotEmpty
                                        ? NetworkImage(
                                            '${APIUrl.baseUrl}${APIUrl.imagePath}${profileData.profilePicture}',
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
                  } else if (state is UserLocalLoaded) {
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
                MultiBlocListener(
                  listeners: [
                    BlocListener<UpdateStatusPesananBloc,
                        UpdateStatusPesananState>(
                      listener: (context, state) {
                        if (state is UpdateStatusPesananSuccess) {
                          BlocProvider.of<PesananMitraBloc>(context)
                              .add(PesananMitraFetchData());
                        }
                      },
                    ),
                    BlocListener<OrderListBloc, OrderListState>(
                      listener: (context, state) {
                        if (state is AddPesanan) {
                          BlocProvider.of<PesananMitraBloc>(context)
                              .add(PesananMitraFetchData());
                        }
                      },
                    ),
                  ],
                  child: BlocBuilder<PesananMitraBloc, PesananMitraState>(
                    builder: (context, state) {
                      if (state is PesananMitraError) {
                        return const Padding(
                          padding: EdgeInsets.symmetric(vertical: 60),
                          child: Center(
                            child: FailedFetchDataWidget(),
                          ),
                        );
                      } else if (state is PesananMitraLoaded) {
                        return ListPesananBerlangsungWidget(
                          pesananList: state.pesananList,
                        );
                      }
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
