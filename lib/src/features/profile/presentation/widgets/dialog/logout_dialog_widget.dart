import 'package:antria_mitra_mobile/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:antria_mitra_mobile/src/shared/dialog_widget.dart';
import 'package:antria_mitra_mobile/src/shared/toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LogoutDialogWidget extends StatelessWidget {
  const LogoutDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is LogoutSuccess) {
          showToastSuccessMessage('Logout Berhasil');
          Navigator.pushNamedAndRemoveUntil(
            context,
            '/login',
            (route) => false,
          );
        }
        if (state is LogoutFailed) {
          showToastFailedMessage('Logout Gagal');
        }
      },
      builder: (context, state) {
        return DialogWidget(
          title: 'Konfirmasi',
          onCancel: () {
            Navigator.pop(context);
          },
          subtitle: 'Anda yakin ingin logout?',
          textCancel: 'Cancel',
          textConfirm: 'Logout',
          onPressed: () {
            context.read<AuthBloc>().add(
                  LogoutTapped(),
                );
          },
        );
      },
    );
  }
}
