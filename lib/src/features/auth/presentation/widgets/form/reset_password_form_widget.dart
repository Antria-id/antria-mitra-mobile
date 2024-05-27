import 'package:antria_mitra_mobile/src/shared/custom_button_widget.dart';
import 'package:antria_mitra_mobile/src/shared/textfield_widget.dart';
import 'package:antria_mitra_mobile/src/shared/validator.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';

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
              appBar: AppBar(
                automaticallyImplyLeading: false,
                title: Row(
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      width: 127,
                      height: 39.46,
                    ),
                  ],
                ),
              ),
              backgroundColor: AppColor.whiteColor,
              body: Column(
                children: [
                  Image.asset(
                    'assets/images/antria.png',
                    height: 226,
                    width: 226,
                  ),
                  Form(
                    key: formKey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 26,
                        vertical: 26,
                      ),
                      child: Column(
                        children: [
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
                          CustomButtonWidget(
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
                                  'Reset Password',
                                  style: AppTextStyle.largeWhite,
                                ),
                              ),
                            ),
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                setState(() {
                                  isLoading = true;
                                });
                              }
                            },
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Sudah punya akun?",
                                style: AppTextStyle.mediumBlack,
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                    context,
                                    '/login',
                                  );
                                },
                                child: const Text(
                                  'Masuk',
                                  style: AppTextStyle.mediumPurple,
                                ),
                              ),
                            ],
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
        if (isLoading)
          Positioned.fill(
            child: Center(
              child: Container(
                color: Colors.transparent,
                child: const CircularProgressIndicator(
                  color: AppColor.primaryColor,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
