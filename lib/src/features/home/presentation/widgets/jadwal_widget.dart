import 'package:antria_mitra_mobile/src/core/utils/format_hari.dart';
import 'package:antria_mitra_mobile/src/features/home/data/models/stataus_usaha_request_model.dart';
import 'package:antria_mitra_mobile/src/features/home/presentation/bloc/get_jadwal/get_status_usaha_bloc.dart';
import 'package:antria_mitra_mobile/src/features/home/presentation/bloc/update_jadwal/update_status_usaha_bloc.dart';
import 'package:antria_mitra_mobile/src/shared/failed_fetch_data_widget.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class JadwalWidget extends StatefulWidget {
  const JadwalWidget({super.key});

  @override
  State<JadwalWidget> createState() => _JadwalWidgetState();
}

class _JadwalWidgetState extends State<JadwalWidget> {
  bool isBuka = false;
  bool isFull = false;
  String updateStatusToko = '';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetStatusUsahaBloc()
        ..add(
          GetStatusFetchData(),
        ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(10.0),
          ),
          border: Border.all(
            color: AppColor.dividerColor,
            width: 0.5,
          ),
          color: Colors.white,
        ),
        child: BlocListener<UpdateStatusUsahaBloc, UpdateStatusUsahaState>(
          listener: (context, state) {
            if (state is UpdateStatusSuccess) {
              BlocProvider.of<GetStatusUsahaBloc>(context)
                  .add(GetStatusFetchData());
            }
          },
          child: BlocBuilder<GetStatusUsahaBloc, GetStatusUsahaState>(
            builder: (context, state) {
              if (state is GetStatusError) {
                return const FailedFetchDataWidget();
              } else if (state is GetStatusLoaded) {
                final jadwal = state.statusUsahaModel;
                final formattedHariBuka = formatHariBuka(jadwal.hariBuka);
                String truncateText(String text, int maxLength) {
                  if (text.length <= maxLength) {
                    return text;
                  } else {
                    return '${text.substring(0, maxLength)}...';
                  }
                }

                isBuka = state.statusUsahaModel.statusToko == "OPEN";
                isFull = state.statusUsahaModel.statusToko == "FULL";

                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              truncateText(formattedHariBuka, 14),
                              style: AppTextStyle.smallBlack.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  jadwal.jamBuka!.isEmpty &&
                                          jadwal.jamTutup!.isEmpty
                                      ? truncateText('Jam Kosong', 11)
                                      : "${jadwal.jamBuka} - ${jadwal.jamTutup}",
                                  style: AppTextStyle.smallBlack.copyWith(
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                const SizedBox(
                                  width: 26,
                                ),
                              ],
                            )
                          ],
                        ),
                        Image.asset(
                          'assets/icons/booking.png',
                          width: 34,
                          height: 34,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 64,
                      child: VerticalDivider(
                        color: AppColor.dividerColor,
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 14,
                            bottom: 10,
                            top: 10,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Buka',
                                        style: AppTextStyle.smallBlack.copyWith(
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Transform.flip(
                                    flipX: true,
                                    child: Transform.scale(
                                      scale: 0.7,
                                      child: CupertinoSwitch(
                                        value: isBuka,
                                        onChanged: (value) {
                                          setState(() {
                                            isBuka = value;
                                            if (isBuka) {
                                              updateStatusToko = "OPEN";
                                            } else {
                                              updateStatusToko = "CLOSE";
                                            }

                                            final updateEvent =
                                                UpdateStatusTapped(
                                              requestUser: StatusUsahaRequest(
                                                statusToko: updateStatusToko,
                                              ),
                                            );
                                            context
                                                .read<UpdateStatusUsahaBloc>()
                                                .add(updateEvent);
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 9,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'Full',
                                        style: AppTextStyle.smallBlack.copyWith(
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Checkbox(
                                    checkColor: AppColor.blackColor,
                                    fillColor:
                                        MaterialStateProperty.resolveWith<
                                            Color>((Set<MaterialState> states) {
                                      if (states
                                          .contains(MaterialState.selected)) {
                                        return Colors.transparent;
                                      }
                                      return Colors.transparent;
                                    }),
                                    side: MaterialStateBorderSide.resolveWith(
                                      (Set<MaterialState> states) {
                                        if (states
                                            .contains(MaterialState.selected)) {
                                          return const BorderSide(
                                              color: Colors.black, width: 2);
                                        }
                                        return const BorderSide(
                                            color: Colors.black, width: 2);
                                      },
                                    ),
                                    value: isFull,
                                    onChanged: (value) {
                                      setState(() {
                                        if (isFull) {
                                          updateStatusToko = "OPEN";
                                        } else {
                                          updateStatusToko = "FULL";
                                        }
                                        isFull = value!;
                                        final updateEvent = UpdateStatusTapped(
                                          requestUser: StatusUsahaRequest(
                                            statusToko: updateStatusToko,
                                          ),
                                        );
                                        context
                                            .read<UpdateStatusUsahaBloc>()
                                            .add(updateEvent);
                                      });
                                    },
                                  ),
                                  const SizedBox(
                                    width: 9,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                );
              }
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
