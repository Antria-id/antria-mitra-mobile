import 'package:antria_mitra_mobile/src/features/auth/data/models/request/login_request_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:antria_mitra_mobile/src/features/auth/presentation/widgets/loading_widget.dart';
import 'package:antria_mitra_mobile/src/features/auth/presentation/widgets/password_textfield_widget.dart';
import 'package:antria_mitra_mobile/src/shared/bottom_navigation.dart';
import 'package:antria_mitra_mobile/src/shared/custom_button_widget.dart';
import 'package:antria_mitra_mobile/src/shared/textfield_widget.dart';
import 'package:antria_mitra_mobile/src/shared/toast.dart';
import 'package:antria_mitra_mobile/src/shared/validator.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({super.key});

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  late String username;
  late String password;
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
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/antria.png',
                      height: 226,
                      width: 226,
                    ),
                    Form(
                      key: formKey,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 26),
                        child: Column(
                          children: [
                            TextFieldWidget(
                              key: Key('username'),
                              onChanged: (value) {
                                username = value.trim();
                              },
                              hintText: 'Masukan Username',
                              validator: validatorForm.validateUsername,
                              controller: usernameController,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            PasswordFieldWidget(
                              key: Key('password'),
                              onChanged: (value) {
                                password = value.trim();
                              },
                              hintText: 'Masukkan Password',
                              validator: validatorForm.validatePassword,
                              controller: passwordController,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    '/reset-password',
                                  );
                                },
                                child: const Text(
                                  'Lupa Password?',
                                  style: AppTextStyle.mediumPurple,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            BlocConsumer<AuthBloc, AuthState>(
                              listener: (context, state) {
                                if (state is LoginSuccess) {
                                  showToastSuccessMessage('Login Berhasil');
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const BottomNavigation(),
                                    ),
                                  );
                                }
                                if (state is LoginFailed) {
                                  showToastFailedMessage(
                                    'Username and Password Not Match',
                                  );
                                  setState(() {
                                    isLoading = false;
                                  });
                                }
                              },
                              builder: (context, state) {
                                return CustomButtonWidget(
                                  key: Key('LoginButton'),
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
                                        'Login',
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
                                            LoginButtonTapped(
                                              request: LoginRequest(
                                                username:
                                                    usernameController.text,
                                                password:
                                                    passwordController.text,
                                              ),
                                            ),
                                          );
                                    }
                                  },
                                );
                              },
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Belum punya akun?",
                                  style: AppTextStyle.mediumBlack,
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                      context,
                                      '/onboard-register',
                                    );
                                  },
                                  child: const Text(
                                    'Daftar Mitra',
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
        ),
        if (isLoading) const LoadingWidget()
      ],
    );
  }
}
