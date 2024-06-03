import 'package:antria_mitra_mobile/src/features/jadwal/data/models/request/mitra_request_model.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/presentation/bloc/get_jadwal/get_jadwal_bloc.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/presentation/bloc/update_jadwal/update_jadwal_bloc.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/presentation/widgets/waktu_widget.dart';
import 'package:antria_mitra_mobile/src/shared/custom_appbar_widget.dart';
import 'package:antria_mitra_mobile/src/shared/empty_data_widget.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:day_picker/day_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class JadwalFormWidget extends StatefulWidget {
  const JadwalFormWidget({super.key});

  @override
  State<JadwalFormWidget> createState() => _JadwalFormWidgetState();
}

class _JadwalFormWidgetState extends State<JadwalFormWidget> {
  final formKey = GlobalKey<FormState>();
  List<String> selectedDays = [];
  TimeOfDay? openingTime;
  TimeOfDay? closingTime;
  String formatTime(TimeOfDay time) {
    final hour = time.hour.toString().padLeft(2, '0');
    final minute = time.minute.toString().padLeft(2, '0');
    return '$hour:$minute';
  }

  bool isFormChanged = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(
        title: 'Kelola Jadwal',
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
      ),
      backgroundColor: AppColor.backgroundColor,
      body: BlocBuilder<GetJadwalBloc, GetJadwalState>(
        builder: (context, state) {
          if (state is GetJadwalStateErrorState) {
            return const Center(
              child: EmptyDataWidget(),
            );
          } else if (state is GetJadwalStateLoadedState) {
            List<String> openingDays = state.mitraModel.hariBuka!.split(',');
            List<DayInWeek> day = [
              DayInWeek("S", dayKey: "senin"),
              DayInWeek("S", dayKey: "selasa"),
              DayInWeek("R", dayKey: "rabu"),
              DayInWeek("K", dayKey: "kamis"),
              DayInWeek("J", dayKey: "jumat"),
              DayInWeek("S", dayKey: "sabtu"),
              DayInWeek("M", dayKey: "minggu"),
            ];

            for (DayInWeek d in day) {
              if (openingDays.contains(d.dayKey)) {
                d.isSelected = true;
              }
            }
            return SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 26, vertical: 40),
                child: Center(
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        Container(
                          width: 338,
                          height: 60,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 14),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/icons/booking.png',
                                  width: 30,
                                  height: 30,
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  'Jadwal Restoran',
                                  style: AppTextStyle.mediumBlack.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 21,
                        ),
                        Container(
                          width: 338,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 14, vertical: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Pilih Jadwal',
                                  style: AppTextStyle.mediumBlack.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Text(
                                  'Pilih Hari',
                                  style: AppTextStyle.smallBlack,
                                ),
                                SelectWeekDays(
                                  onSelect: (values) {
                                    setState(() {
                                      selectedDays = values;
                                      isFormChanged = true;
                                    });
                                  },
                                  days: day,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  border: true,
                                  daysFillColor: AppColor.primaryColor,
                                  selectedDayTextColor: AppColor.whiteColor,
                                  unSelectedDayTextColor: Colors.grey,
                                  backgroundColor: Colors.transparent,
                                  daysBorderColor: AppColor.primaryColor,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                WaktuWidget(
                                  mitraModel: state.mitraModel,
                                  onTimeSelected: (opening, closing) {
                                    setState(() {
                                      openingTime = opening;
                                      closingTime = closing;
                                      isFormChanged = true;
                                    });
                                  },
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                BlocConsumer<UpdateJadwalBloc,
                                    UpdateJadwalState>(
                                  listener: (context, state) {
                                    if (state is UpdateJadwalLoadingState) {
                                      const Center(
                                        child: CircularProgressIndicator(),
                                      );
                                    }
                                  },
                                  builder: (context, state) {
                                    return Align(
                                      alignment: Alignment.center,
                                      child: ElevatedButton(
                                        onPressed: isFormChanged
                                            ? () {
                                                if (formKey.currentState!
                                                    .validate()) {
                                                  final currentState = context
                                                      .read<GetJadwalBloc>()
                                                      .state;
                                                  if (currentState
                                                      is GetJadwalStateLoadedState) {
                                                    final existingModel =
                                                        currentState.mitraModel;
                                                    final updateEvent =
                                                        UpdateJadwalEvent
                                                            .onUpdateTapped(
                                                      requestUser:
                                                          MitraRequestModel(
                                                        hariBuka: selectedDays
                                                                .isNotEmpty
                                                            ? selectedDays
                                                                .join(',')
                                                            : existingModel
                                                                .hariBuka,
                                                        jamBuka: openingTime !=
                                                                null
                                                            ? formatTime(
                                                                openingTime!)
                                                            : existingModel
                                                                .jamBuka,
                                                        jamTutup: closingTime !=
                                                                null
                                                            ? formatTime(
                                                                closingTime!)
                                                            : existingModel
                                                                .jamTutup,
                                                      ),
                                                    );
                                                    context
                                                        .read<
                                                            UpdateJadwalBloc>()
                                                        .add(updateEvent);
                                                  }
                                                }
                                              }
                                            : null,
                                        style: ElevatedButton.styleFrom(
                                          fixedSize: const Size(200, 32),
                                          backgroundColor:
                                              AppColor.primaryColor,
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10),
                                            ),
                                          ),
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 16,
                                          ),
                                        ),
                                        child: Text(
                                          'Konfirmasi',
                                          style:
                                              AppTextStyle.mediumWhite.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
