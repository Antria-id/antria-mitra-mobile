import 'package:antria_mitra_mobile/src/features/profile/presentation/bloc/ulasan/ulasan_bloc.dart';
import 'package:antria_mitra_mobile/src/features/profile/presentation/widgets/ulasan/ulasan_list_widget.dart';
import 'package:antria_mitra_mobile/src/shared/custom_appbar_widget.dart';
import 'package:antria_mitra_mobile/src/shared/empty_data_widget.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UlasanPage extends StatelessWidget {
  const UlasanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UlasanBloc()
        ..add(
          UlasanFetchData(),
        ),
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
                child: EmptyDataWidget(),
              );
            }
            if (state is UlasanLoaded) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: ListUlasanWidget(
                  ulasanList: state.ulasan,
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
