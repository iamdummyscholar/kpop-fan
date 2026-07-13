import 'package:flutter/material.dart';
import 'screens/login_page.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const KPopFanApp());
}

class KPopFanApp extends StatelessWidget {
  const KPopFanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'K-Star Connect',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const LoginPage(),
    );
  }
}