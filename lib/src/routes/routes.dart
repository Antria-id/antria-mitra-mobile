import 'package:antria_mitra_mobile/src/features/auth/presentation/pages/login_page.dart';
import 'package:antria_mitra_mobile/src/features/auth/presentation/pages/register_page.dart';
import 'package:antria_mitra_mobile/src/features/auth/presentation/pages/reset_password_page.dart';
import 'package:antria_mitra_mobile/src/features/auth/presentation/pages/splash_page.dart';
import 'package:antria_mitra_mobile/src/features/chat/presentation/pages/chat_list_page.dart';
import 'package:antria_mitra_mobile/src/features/chat/presentation/pages/chat_page.dart';
import 'package:antria_mitra_mobile/src/features/home/presentation/pages/home_page.dart';
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
      case '/home':
        return _materialRoute(const HomePages());
      case '/chat-list':
        return _materialRoute(const ChatListPage());
      case '/chat':
        return _materialRoute(const ChatPage());
      default:
        return _materialRoute(const LoginPage());
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
