import 'package:antria_mitra_mobile/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:antria_mitra_mobile/src/features/auth/presentation/widgets/form/new_password_form_widget.dart';
import 'package:antria_mitra_mobile/src/features/auth/presentation/widgets/loading_widget.dart';
import 'package:antria_mitra_mobile/src/shared/custom_button_widget.dart';
import 'package:antria_mitra_mobile/src/shared/toast.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';

class VerifyOTPPage extends StatefulWidget {
  final String email;
  const VerifyOTPPage({super.key, required this.email});

  @override
  State<VerifyOTPPage> createState() => _VerifyOTPPageState();
}

class _VerifyOTPPageState extends State<VerifyOTPPage> {
  final otpController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    otpController.dispose();
    super.dispose();
  }

  void submitOTP() {
    print('OTP: ${otpController.text}');
  }

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: isLoading ? 0.5 : 1.0,
          child: AbsorbPointer(
            absorbing: isLoading,
            child: Scaffold(
              body: Center(
                child: Form(
                  key: formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 26, vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Verifikasi OTP',
                          style: AppTextStyle.xxxlargeBlack.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 32.0,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'Masukkan OTP, yang telah kami kirim ke email anda',
                            style: AppTextStyle.mediumBlack,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(
                          height: 54,
                        ),
                        Pinput(
                          length: 4,
                          controller: otpController,
                          onSubmitted: (pin) => submitOTP(),
                          focusedPinTheme: PinTheme(
                            height: 60,
                            width: 56,
                            textStyle: AppTextStyle.largeBlack.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColor.greyColor),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          submittedPinTheme: PinTheme(
                            height: 60,
                            width: 56,
                            textStyle: AppTextStyle.largeBlack.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColor.primaryColor),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          defaultPinTheme: PinTheme(
                            height: 60,
                            width: 56,
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColor.greyColor),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Masukan 4-digit OTP';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 44),
                        BlocConsumer<AuthBloc, AuthState>(
                          listener: (context, state) {
                            if (state is VerifyOTPSuccess) {
                              showToastSuccessMessage('OTP Code Valid');
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) => NewPasswordFormWidget(
                                    token: state.response.accessToken,
                                    id: state.response.userId,
                                  ),
                                ),
                              );
                            }
                            if (state is VerifyOTPFailed) {
                              showToastFailedMessage(
                                'OTP Code Invalid',
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
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: AppColor.gradientTopColor,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                ),
                                child: Container(
                                  width: 280,
                                  height: 47,
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'Verifikasi',
                                    style: AppTextStyle.largeWhite,
                                  ),
                                ),
                              ),
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  setState(() {
                                    isLoading = true;
                                  });
                                  final otp = int.tryParse(otpController.text);
                                  context.read<AuthBloc>().add(
                                        VerifyOTPTapped(
                                          email: widget.email,
                                          otp: otp!,
                                        ),
                                      );
                                }
                              },
                            );
                          },
                        ),
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
