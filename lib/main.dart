import 'package:flutter/material.dart';
import 'package:vordic_user/core/theme/theme.dart';
import 'package:vordic_user/features/onboarding/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.darkThemeMode,
      debugShowCheckedModeBanner: false,
      home: const OnBoarding(),
    );
  }
}
