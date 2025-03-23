import 'package:flutter/material.dart';
import 'package:vordic_user/core/theme/theme.dart';
import 'package:vordic_user/features/onboarding/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.darkThemeMode,
      home: const OnBoarding(),
    );
  }
}
