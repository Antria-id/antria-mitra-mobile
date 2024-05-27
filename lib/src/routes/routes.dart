import 'package:antria_mitra_mobile/src/features/auth/presentation/pages/login_page.dart';
import 'package:antria_mitra_mobile/src/features/auth/presentation/pages/register_page.dart';
import 'package:antria_mitra_mobile/src/features/auth/presentation/pages/reset_password_page.dart';
import 'package:antria_mitra_mobile/src/features/auth/presentation/pages/splash_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route<dynamic>? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _materialRoute(const SplashPage());
      case '/sign-up':
        return _materialRoute(const RegisterPage());
      case '/reset-password':
        return _materialRoute(const ResetPasswordPage());
      default:
        return _materialRoute(const LoginPage());
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
