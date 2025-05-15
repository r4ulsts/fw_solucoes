import 'package:flutter/material.dart';
import 'login_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    });

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor, // Usa o tema atual
      body: Center(
        child: Image.asset(
          'assets/images/logo_fw.png', // Logo da FW
          width: 150,
        ),
      ),
    );
  }
}