import 'package:antria_mitra_mobile/src/features/profile/presentation/bloc/informasi_usaha/informasi_usaha_bloc.dart';
import 'package:antria_mitra_mobile/src/features/profile/presentation/bloc/update_informasi_usaha/update_informasi_usaha_bloc.dart';
import 'package:antria_mitra_mobile/src/features/profile/presentation/widgets/form/edit_informasi_usaha_form_widget.dart';
import 'package:antria_mitra_mobile/src/shared/toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InformasiUsahaPage extends StatelessWidget {
  const InformasiUsahaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InformasiUsahaBloc()..add(InformasiUsahaFetchData()),
      child: BlocListener<UpdateInformasiUsahaBloc, UpdateInformasiUsahaState>(
        listener: (context, state) {
          if (state is UpdateInformasiUsahaSuccess) {
            showToastSuccessMessage(
              'Update Informasi Usaha Berhasil',
            );
            context.read<InformasiUsahaBloc>().add(
                  InformasiUsahaFetchData(),
                );
          }
          if (state is UpdateInformasiUsahaFailed) {
            showToastFailedMessage(
              'Update Informasi Usaha Gagal',
            );
          }
        },
        child: const EditInformasiUsahaFormWidget(),
      ),
    );
  }
}
