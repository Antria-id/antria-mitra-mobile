import 'package:antria_mitra_mobile/src/features/profile/presentation/bloc/karyawan_profile/karyawan_profile_bloc.dart';
import 'package:antria_mitra_mobile/src/features/profile/presentation/bloc/update_profile/update_profile_bloc.dart';
import 'package:antria_mitra_mobile/src/features/profile/presentation/widgets/form/edit_profile_form_widget.dart';
import 'package:antria_mitra_mobile/src/shared/toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          KaryawanProfileBloc()..add(KaryawanProfileFetchData()),
      child: BlocListener<UpdateProfileBloc, UpdateProfileState>(
        listener: (context, state) {
          if (state is UpdateProfileSuccess) {
            showToastSuccessMessage(
              'Update Profile Berhasil',
            );
            context.read<KaryawanProfileBloc>().add(
                  KaryawanProfileFetchData(),
                );
          }
          if (state is UpdateProfileFailed) {
            showToastFailedMessage(
              'Update Profile Gagal',
            );
          }
        },
        child: const EditProfileFormWidget(),
      ),
    );
  }
}
