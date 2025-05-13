import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'modules/auth/pages/login_page.dart';

class FWSolucoesApp extends StatelessWidget {
  const FWSolucoesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FW Soluções',
      theme: AppTheme.lightTheme,
      home: const LoginPage(),
      debugShowCheckedModeBanner: false, 
    );
  }
}