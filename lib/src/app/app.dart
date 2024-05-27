import 'package:antria_mitra_mobile/src/features/auth/presentation/bloc/login/login_bloc.dart';
import 'package:antria_mitra_mobile/src/features/auth/presentation/bloc/register/register_bloc.dart';
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
