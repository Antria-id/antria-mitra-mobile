import 'package:antria_mitra_mobile/src/features/antrian/presentation/bloc/antrian/antrian_bloc.dart';
import 'package:antria_mitra_mobile/src/features/antrian/presentation/bloc/update_status_pesanan/update_status_pesanan_bloc.dart';
import 'package:antria_mitra_mobile/src/features/antrian/presentation/widgets/process/dine_in_list_widget.dart';
import 'package:antria_mitra_mobile/src/features/antrian/presentation/widgets/process/take_away_list_widget.dart';
import 'package:antria_mitra_mobile/src/features/antrian/presentation/widgets/pending/pending_list_widget.dart';
import 'package:antria_mitra_mobile/src/features/antrian/presentation/widgets/selesai/pengambilan_list_widget.dart';
import 'package:antria_mitra_mobile/src/features/antrian/presentation/widgets/tabs_list.dart';
import 'package:antria_mitra_mobile/src/shared/empty_data_widget.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class AntrianPage extends StatefulWidget {
  const AntrianPage({super.key});

  @override
  State<AntrianPage> createState() => _AntrianPageState();
}

class _AntrianPageState extends State<AntrianPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AntrianBloc()
        ..add(
          AntrianFetchData(),
        ),
      child: DefaultTabController(
        length: Tabs().tabs.length,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: const Text(
              'Kelola Antrian',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: AppColor.gradientTopColor,
              ),
            ),
            bottom: TabBar(
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              unselectedLabelColor: Colors.white,
              tabs: Tabs().tabs,
            ),
          ),
          backgroundColor: AppColor.backgroundColor,
          body: BlocListener<UpdateStatusPesananBloc, UpdateStatusPesananState>(
            listener: (context, state) {
              if (state is UpdateStatusPesananSuccess) {
                BlocProvider.of<AntrianBloc>(context).add(AntrianFetchData());
              }
            },
            child: TabBarView(
              children: [
                //Pending Tab
                BlocBuilder<AntrianBloc, AntrianState>(
                  builder: (context, state) {
                    if (state is AntrianError) {
                      return const EmptyDataWidget();
                    } else if (state is AntrianLoaded) {
                      return RefreshIndicator(
                        onRefresh: () async {
                          await Future.delayed(
                              const Duration(milliseconds: 200));
                          setState(() {
                            BlocProvider.of<AntrianBloc>(context)
                                .add(AntrianFetchData());
                          });
                        },
                        child: WaitingListWidget(
                          waitingList: state.pesananList,
                        ),
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
                //Antrian Tab
                BlocBuilder<AntrianBloc, AntrianState>(
                  builder: (context, state) {
                    if (state is AntrianError) {
                      return const EmptyDataWidget();
                    } else if (state is AntrianLoaded) {
                      return DefaultTabController(
                        length: 2,
                        child: Column(
                          children: [
                            Material(
                              color: AppColor.backgroundColor,
                              child: TabBar(
                                dividerColor: AppColor.transparent,
                                labelStyle: AppTextStyle.smallPurple.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: GoogleFonts.poppins().fontFamily,
                                ),
                                labelColor: AppColor.primaryColor,
                                unselectedLabelColor: AppColor.greyColor,
                                indicatorColor: AppColor.primaryColor,
                                tabs: const [
                                  Tab(
                                    text: 'Dine In',
                                  ),
                                  Tab(
                                    text: 'Take Away',
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: TabBarView(
                                children: [
                                  DineInListWidget(
                                    antrianList: state.pesananList,
                                  ),
                                  TakeAwayListWidget(
                                    antrianList: state.pesananList,
                                  ),
                                ],
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

                //Pengambilan Tab
                BlocBuilder<AntrianBloc, AntrianState>(
                  builder: (context, state) {
                    if (state is AntrianError) {
                      return const EmptyDataWidget();
                    } else if (state is AntrianLoaded) {
                      return SelesaiListWidget(
                        pengambilanList: state.pesananList,
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
