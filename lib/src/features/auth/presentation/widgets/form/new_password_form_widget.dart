import 'package:antria_mitra_mobile/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:antria_mitra_mobile/src/features/auth/presentation/widgets/loading_widget.dart';
import 'package:antria_mitra_mobile/src/features/auth/presentation/widgets/password_textfield_widget.dart';
import 'package:antria_mitra_mobile/src/shared/custom_button_widget.dart';
import 'package:antria_mitra_mobile/src/shared/toast.dart';
import 'package:antria_mitra_mobile/src/shared/validator.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewPasswordFormWidget extends StatefulWidget {
  final int id;
  final String token;
  const NewPasswordFormWidget(
      {super.key, required this.id, required this.token});
  @override
  _NewPasswordFormWidgetState createState() => _NewPasswordFormWidgetState();
}

class _NewPasswordFormWidgetState extends State<NewPasswordFormWidget> {
  final formKey = GlobalKey<FormState>();
  String newPassword = '';
  String confPassword = '';
  bool isLoading = false;
  ValidatorForm validatorForm = ValidatorForm();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: isLoading ? 0.5 : 1.0,
          child: AbsorbPointer(
            absorbing: isLoading,
            child: Scaffold(
              backgroundColor: AppColor.whiteColor,
              body: Center(
                child: SingleChildScrollView(
                  child: Form(
                    key: formKey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 26,
                        vertical: 26,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Buat Password Baru',
                            style: AppTextStyle.xxxlargeBlack.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 32.0,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: Text(
                              'Masukkan password baru anda',
                              style: AppTextStyle.mediumBlack,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(
                            height: 62,
                          ),
                          PasswordFieldWidget(
                            onChanged: (value) {
                              setState(() {
                                newPassword = value.trim();
                              });
                            },
                            hintText: 'Password',
                            validator: validatorForm.validatePassword,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          PasswordFieldWidget(
                            onChanged: (value) {
                              setState(() {
                                confPassword = value.trim();
                              });
                            },
                            hintText: 'Konfirmasi Password',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Konfirmasi password tidak boleh kosong';
                              }
                              if (value != newPassword) {
                                return 'Password tidak cocok';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          BlocConsumer<AuthBloc, AuthState>(
                            listener: (context, state) {
                              if (state is UpdatePasswordSuccess) {
                                showToastSuccessMessage(
                                  'Update Password Success',
                                );
                                Navigator.pushNamed(context, '/login');
                              } else if (state is UpdatePasswordFailed) {
                                showToastFailedMessage(
                                  'Failed to Update Password',
                                );
                                setState(() {
                                  isLoading = false;
                                });
                              }
                            },
                            builder: (context, state) {
                              return CustomButtonWidget(
                                circularButton: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                size: const Size(330, 47),
                                child: Container(
                                  decoration: BoxDecoration(
                                    gradient: AppColor.gradientTopColor,
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  child: Container(
                                    width: double.infinity,
                                    height: 47,
                                    alignment: Alignment.center,
                                    child: const Text(
                                      'Kirim',
                                      style: AppTextStyle.largeWhite,
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  if (formKey.currentState!.validate()) {
                                    setState(() {
                                      isLoading = true;
                                    });
                                    context.read<AuthBloc>().add(
                                          UpdatePasswordTapped(
                                            id: widget.id,
                                            password: newPassword,
                                            token: widget.token,
                                          ),
                                        );
                                  }
                                },
                              );
                            },
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        if (isLoading) LoadingWidget(),
      ],
    );
  }
}
