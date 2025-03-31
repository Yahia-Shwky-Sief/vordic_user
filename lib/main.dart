import 'package:flutter/material.dart';
import 'package:vordic_user/core/theme/theme.dart';
import 'package:vordic_user/features/onboarding/onboarding.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:vordic_user/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
