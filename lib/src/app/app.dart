import 'package:antria_mitra_mobile/src/features/antrian/presentation/bloc/antrian/antrian_bloc.dart';
import 'package:antria_mitra_mobile/src/features/antrian/presentation/bloc/update_status_pesanan/update_status_pesanan_bloc.dart';
import 'package:antria_mitra_mobile/src/features/antrian/presentation/bloc/invoice_pesanan/invoice_pesanan_bloc.dart';
import 'package:antria_mitra_mobile/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/presentation/bloc/detail_transaksi/detail_transaksi_bloc.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/presentation/bloc/riwayat_transaksi/riwayat_transaksi_bloc.dart';
import 'package:antria_mitra_mobile/src/features/home/presentation/bloc/pesanan_mitra/pesanan_mitra_bloc.dart';
import 'package:antria_mitra_mobile/src/features/home/presentation/bloc/user/user_bloc.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/presentation/bloc/get_jadwal/get_jadwal_bloc.dart';
import 'package:antria_mitra_mobile/src/features/jadwal/presentation/bloc/update_jadwal/update_jadwal_bloc.dart';
import 'package:antria_mitra_mobile/src/features/kasir/presentation/bloc/orderlist/order_list_bloc.dart';
import 'package:antria_mitra_mobile/src/features/kasir/presentation/bloc/produk/produk_bloc.dart';
import 'package:antria_mitra_mobile/src/features/profile/presentation/bloc/informasi_usaha/informasi_usaha_bloc.dart';
import 'package:antria_mitra_mobile/src/features/profile/presentation/bloc/karyawan_profile/karyawan_profile_bloc.dart';
import 'package:antria_mitra_mobile/src/features/profile/presentation/bloc/ulasan/ulasan_bloc.dart';
import 'package:antria_mitra_mobile/src/features/profile/presentation/bloc/update_informasi_usaha/update_informasi_usaha_bloc.dart';
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
          create: (_) => AuthBloc(),
        ),
        BlocProvider(
          create: (_) => UserBloc(),
        ),
        BlocProvider(
          create: (_) => PesananMitraBloc(),
        ),
        BlocProvider(
          create: (_) => KaryawanProfileBloc(),
        ),
        BlocProvider(
          create: (_) => UpdateProfileBloc(),
        ),
        BlocProvider(
          create: (_) => UlasanBloc(),
        ),
        BlocProvider(
          create: (_) => ProdukBloc(),
        ),
        BlocProvider(
          create: (_) => GetJadwalBloc(),
        ),
        BlocProvider(
          create: (_) => UpdateJadwalBloc(),
        ),
        BlocProvider(
          create: (_) => UpdateStatusPesananBloc(),
        ),
        BlocProvider(
          create: (_) => InvoicePesananBloc(),
        ),
        BlocProvider(
          create: (_) => AntrianBloc(),
        ),
        BlocProvider(
          create: (_) => RiwayatTransaksiBloc(),
        ),
        BlocProvider(
          create: (_) => DetailTransaksiBloc(),
        ),
        BlocProvider(
          create: (_) => InformasiUsahaBloc(),
        ),
        BlocProvider(
          create: (_) => UpdateInformasiUsahaBloc(),
        ),
        BlocProvider(
          create: (_) => OrderListBloc(),
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
