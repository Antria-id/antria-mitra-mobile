import 'package:antria_mitra_mobile/src/features/antrian/presentation/pages/antrian_page.dart';
import 'package:antria_mitra_mobile/src/features/antrian/presentation/pages/detail_process_page.dart';
import 'package:antria_mitra_mobile/src/features/antrian/presentation/pages/detail_waiting_page.dart';
import 'package:antria_mitra_mobile/src/features/antrian/presentation/pages/detail_pesanan_selesai_page.dart';
import 'package:antria_mitra_mobile/src/features/auth/presentation/pages/login_page.dart';
import 'package:antria_mitra_mobile/src/features/auth/presentation/pages/onboard_register_page.dart';
import 'package:antria_mitra_mobile/src/features/auth/presentation/pages/register_page.dart';
import 'package:antria_mitra_mobile/src/features/auth/presentation/pages/reset_password_page.dart';
import 'package:antria_mitra_mobile/src/features/auth/presentation/pages/splash_page.dart';
import 'package:antria_mitra_mobile/src/features/auth/presentation/pages/verify_otp_page.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/presentation/pages/detail_history_transaksi_page.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/presentation/pages/history_transaksi.dart';
import 'package:antria_mitra_mobile/src/features/home/presentation/pages/home_page.dart';
import 'package:antria_mitra_mobile/src/features/kasir/presentation/pages/kasir_page.dart';
import 'package:antria_mitra_mobile/src/features/kasir/presentation/pages/pemesanan_page.dart';
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

      case '/onboard-register':
        return _materialRoute(const OnboardRegister());

      case '/reset-password':
        return _materialRoute(const ResetPasswordPage());

      case '/verify-otp':
        final email = settings.arguments as String;
        return _materialRoute(VerifyOTPPage(
          email: email,
        ));

      case '/home':
        return _materialRoute(const HomePage());

      case '/riwayat-transaksi':
        return _materialRoute(const HistoryTransaksiPage());

      case '/detail-transaksi':
        final invoice = settings.arguments as String;
        return _materialRoute(
          DetailHistoryTransaksiPage(
            invoice: invoice,
          ),
        );

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

      case '/kasir':
        return _materialRoute(const KasirPage());

      case '/pemesanan':
        return _materialRoute(const PemesananPage());

      case '/antrian':
        return _materialRoute(const AntrianPage());

      case '/detail-process':
        final arguments = settings.arguments as Map<String, dynamic>;
        final invoice = arguments['invoice'] as String;
        final nomor = arguments['nomor'] as String;
        return _materialRoute(
          DetailProcessPage(
            invoice: invoice,
            nomor: nomor,
          ),
        );

      case '/detail-pesanan-selesai':
        final invoice = settings.arguments as String;
        return _materialRoute(
          DetailPesananSelesaiPage(
            invoice: invoice,
          ),
        );

      case '/detail-waiting':
        final invoice = settings.arguments as String;
        return _materialRoute(
          DetailWaitingPage(
            invoice: invoice,
          ),
        );

      default:
        return _materialRoute(const LoginPage());
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
