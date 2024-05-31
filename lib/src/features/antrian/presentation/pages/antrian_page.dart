import 'package:antria_mitra_mobile/src/features/antrian/presentation/bloc/antrian_pesanan/pesanan_bloc.dart';
import 'package:antria_mitra_mobile/src/features/antrian/presentation/widgets/antrian/dine_in_list_widget.dart';
import 'package:antria_mitra_mobile/src/features/antrian/presentation/widgets/antrian/take_away_list_widget.dart';
import 'package:antria_mitra_mobile/src/features/antrian/presentation/widgets/pending/pending_list_widget.dart';
import 'package:antria_mitra_mobile/src/features/antrian/presentation/widgets/pengambilan/pengambilan_list_widget.dart';
import 'package:antria_mitra_mobile/src/features/antrian/presentation/widgets/tabs_list.dart';
import 'package:antria_mitra_mobile/src/shared/empty_data_widget.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class AntrianPage extends StatelessWidget {
  const AntrianPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PesananBloc()..add(const GetPesananFetchDataEvent()),
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
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 20,
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
          body: TabBarView(
            children: [
              //Pending Tab
              BlocBuilder<PesananBloc, PesananState>(
                builder: (context, state) {
                  if (state is PesananErrorState) {
                    return const EmptyDataWidget();
                  } else if (state is PesananLoadedState) {
                    return PendingListWidget(
                      waitingList: state.pesananList,
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
              //Antrian Tab
              BlocBuilder<PesananBloc, PesananState>(
                builder: (context, state) {
                  if (state is PesananErrorState) {
                    return const EmptyDataWidget();
                  } else if (state is PesananLoadedState) {
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
                                    antrianList: state.pesananList),
                                TakeAwayListWidget(
                                    antrianList: state.pesananList),
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
              BlocBuilder<PesananBloc, PesananState>(
                builder: (context, state) {
                  if (state is PesananErrorState) {
                    return const EmptyDataWidget();
                  } else if (state is PesananLoadedState) {
                    return PengambilanListWidget(
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
    );
  }
}
