import 'package:antria_mitra_mobile/src/features/jadwal/presentation/bloc/get_jadwal/get_jadwal_bloc.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/presentation/bloc/update_jadwal/update_jadwal_bloc.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/presentation/widgets/jadwal_form_widget.dart';
import 'package:antria_mitra_mobile/src/shared/toast.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class JadwalPage extends StatelessWidget {
  const JadwalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetJadwalBloc()
        ..add(
          GetJadwalFetchData(),
        ),
      child: BlocListener<UpdateJadwalBloc, UpdateJadwalState>(
        listener: (context, state) {
          if (state is UpdateJadwalSuccess) {
            showToastSuccessMessage(
              'Update Jadwal Berhasil',
            );
            context.read<GetJadwalBloc>().add(GetJadwalFetchData());
          }
          if (state is UpdateJadwalFailed) {
            showToastFailedMessage(
              'Update Jadwal Gagal',
            );
          }
        },
        child: const JadwalFormWidget(),
      ),
    );
  }
}
