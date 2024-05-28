import 'package:antria_mitra_mobile/src/features/auth/presentation/bloc/login/login_bloc.dart';
import 'package:antria_mitra_mobile/src/features/auth/presentation/bloc/register/register_bloc.dart';
import 'package:antria_mitra_mobile/src/features/home/presentation/bloc/daily_income/daily_income_bloc.dart';
import 'package:antria_mitra_mobile/src/features/home/presentation/bloc/pesanan_berlangsung/bloc/pesanan_berlangsung_bloc.dart';
import 'package:antria_mitra_mobile/src/features/home/presentation/bloc/user/user_bloc.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/presentation/bloc/get_jadwal/get_jadwal_bloc.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/presentation/bloc/update_jadwal/update_jadwal_bloc.dart';
import 'package:antria_mitra_mobile/src/features/kasir/presentation/bloc/product/product_bloc.dart';
import 'package:antria_mitra_mobile/src/features/profile/presentation/bloc/karyawan_profile/karyawan_profile_bloc.dart';
import 'package:antria_mitra_mobile/src/features/profile/presentation/bloc/logout/logout_bloc.dart';
import 'package:antria_mitra_mobile/src/features/profile/presentation/bloc/ulasan/ulasan_bloc.dart';
import 'package:antria_mitra_mobile/src/features/profile/presentation/bloc/update_profile/update_profile_bloc.dart';
import 'package:antria_mitra_mobile/src/routes/routes.dart';
import 'package:antria_mitra_mobile/src/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(),
        ),
        BlocProvider(
          create: (context) => RegisterBloc(),
        ),
        BlocProvider(
          create: (context) => DailyIncomeBloc(),
        ),
        BlocProvider(
          create: (context) => UserBloc(),
        ),
        BlocProvider(
          create: (context) => PesananBerlangsungBloc(),
        ),
        BlocProvider(
          create: (_) => KaryawanProfileBloc(),
        ),
        BlocProvider(
          create: (_) => UpdateProfileBloc(),
        ),
        BlocProvider(
          create: (_) => LogoutBloc(),
        ),
        BlocProvider(
          create: (_) => UlasanBloc(),
        ),
        BlocProvider(
          create: (_) => ProductBloc(),
        ),
        BlocProvider(
          create: (_) => GetJadwalBloc(),
        ),
        BlocProvider(
          create: (_) => UpdateJadwalBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mitra Antria',
        theme: appTheme,
        onGenerateRoute: AppRoutes.onGenerateRoutes,
      ),
    );
  }
}
