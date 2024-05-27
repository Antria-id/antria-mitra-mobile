import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/auth/presentation/pages/login_page.dart';
import 'package:antria_mitra_mobile/src/features/home/domain/usecases/check_user_login_status_usecase.dart';
import 'package:antria_mitra_mobile/src/shared/bottom_navigation.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 2),
      () {
        serviceLocator<CheckUserLoginStatus>().checkIfUserLoggedIn().then(
          (isUserLoggedIn) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => isUserLoggedIn
                    ? const BottomNavigation()
                    : const LoginPage(),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          'assets/images/antria.png',
        ),
      ),
    );
  }
}
