import 'package:antria_mitra_mobile/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:antria_mitra_mobile/src/features/auth/presentation/widgets/loading_widget.dart';
import 'package:antria_mitra_mobile/src/shared/custom_button_widget.dart';
import 'package:antria_mitra_mobile/src/shared/textfield_widget.dart';
import 'package:antria_mitra_mobile/src/shared/toast.dart';
import 'package:antria_mitra_mobile/src/shared/validator.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResetPasswordFormWidget extends StatefulWidget {
  const ResetPasswordFormWidget({super.key});

  @override
  State<ResetPasswordFormWidget> createState() =>
      _ResetPasswordFormWidgetState();
}

class _ResetPasswordFormWidgetState extends State<ResetPasswordFormWidget> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  late String email;
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
              body: SafeArea(
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Form(
                          key: formKey,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 26,
                              vertical: 26,
                            ),
                            child: Column(
                              children: [
                                Text(
                                  'Lupa Password',
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
                                    'Masukkan email, untuk mengganti password kamu',
                                    style: AppTextStyle.mediumBlack,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                const SizedBox(
                                  height: 47,
                                ),
                                TextFieldWidget(
                                  onChanged: (value) {
                                    email = value.trim();
                                  },
                                  hintText: 'Masukan Email',
                                  validator: validatorForm.validateEmail,
                                  controller: emailController,
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                BlocConsumer<AuthBloc, AuthState>(
                                  listener: (context, state) {
                                    if (state is SendOTPSuccess) {
                                      showToastSuccessMessage(
                                        'OTP Code Send to your Email',
                                      );
                                      Navigator.pushNamed(
                                        context,
                                        '/verify-otp',
                                        arguments: state.email,
                                      );
                                    } else if (state is SendOTPFailed) {
                                      showToastFailedMessage(
                                        'OTP Failed to Send',
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
                                                SendEmailTapped(
                                                  email: email,
                                                ),
                                              );
                                        }
                                      },
                                    );
                                  },
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                CustomButtonWidget(
                                  backgroundColor: AppColor.whiteColor,
                                  borderSide: BorderSide(
                                    width: 0.5,
                                    color: AppColor.greyColor,
                                  ),
                                  circularButton: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  size: const Size(340, 47),
                                  child: Text(
                                    'Batal',
                                    style: AppTextStyle.largeBlack,
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamed(
                                      context,
                                      'sign-in',
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        if (isLoading) const LoadingWidget()
      ],
    );
  }
}
