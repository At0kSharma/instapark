import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instapark/features/authentication/screens/login/login.dart';
import 'package:instapark/features/onboarding/screens/onboarding.dart';
import 'package:instapark/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const OnboardingScreen(),
    );
  }
}
