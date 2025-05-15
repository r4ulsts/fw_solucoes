import 'package:flutter/material.dart';
import 'core/Theme/app_theme.dart';
import 'modules/auth/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FW Soluções',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system, // Alterna automaticamente!
      home: const SplashScreen(),
    );
  }
}