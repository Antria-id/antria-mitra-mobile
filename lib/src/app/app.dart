import 'package:antria_mitra_mobile/src/routes/routes.dart';
import 'package:antria_mitra_mobile/src/themes/app_theme.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mitra Antria',
      theme: appTheme,
      onGenerateRoute: AppRoutes.onGenerateRoutes,
    );
  }
}
