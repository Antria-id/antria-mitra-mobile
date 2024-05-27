import 'package:antria_mitra_mobile/src/features/auth/presentation/pages/login_page.dart';
import 'package:antria_mitra_mobile/src/features/auth/presentation/pages/register_page.dart';
import 'package:antria_mitra_mobile/src/features/auth/presentation/pages/reset_password_page.dart';
import 'package:antria_mitra_mobile/src/features/auth/presentation/pages/splash_page.dart';
import 'package:antria_mitra_mobile/src/features/chat/presentation/pages/chat_list_page.dart';
import 'package:antria_mitra_mobile/src/features/chat/presentation/pages/chat_page.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/presentation/pages/detail_history_transaksi_page.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/presentation/pages/history_transaksi.dart';
import 'package:antria_mitra_mobile/src/features/home/presentation/pages/home_page.dart';
import 'package:antria_mitra_mobile/src/features/profile/presentation/pages/contact_support_page.dart';
import 'package:antria_mitra_mobile/src/features/profile/presentation/pages/edit_profile_page.dart';
import 'package:antria_mitra_mobile/src/features/profile/presentation/pages/profile_page.dart';
import 'package:antria_mitra_mobile/src/features/profile/presentation/pages/ulasan_screen.dart';
import 'package:antria_mitra_mobile/src/features/profile/presentation/pages/webview_screen.dart';
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
        return _materialRoute(const HomePage());
      case '/chat-list':
        return _materialRoute(const ChatListPage());
      case '/chat':
        return _materialRoute(const ChatPage());
      case '/riwayat-transaksi':
        return _materialRoute(const HistoryTransaksiPage());
      case '/detail-transaksi':
        return _materialRoute(const DetailHistoryTransaksiPage());
      case '/profile':
        return _materialRoute(const ProfilePage());
      case '/ulasan':
        return _materialRoute(const UlasanPage());

      case '/contact-support':
        return _materialRoute(const ContactSupportPage());

      case '/edit-profile':
        return _materialRoute(const EditProfilePage());

      case '/webview-dashboard':
        return _materialRoute(const WebviewPage());

      default:
        return _materialRoute(const LoginPage());
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
