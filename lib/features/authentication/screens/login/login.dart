import 'package:flutter/material.dart';
import 'package:instapark/features/authentication/screens/widget/form_divider.dart';
import 'package:instapark/features/authentication/screens/login/widget/login_form.dart';
import 'package:instapark/features/authentication/screens/login/widget/logo_title.dart';
import 'package:instapark/features/authentication/screens/widget/sign_in_options.dart';
import 'package:instapark/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 100,
            left: 26,
            right: 26,
            bottom: 26,
          ),
          child: Column(
            children: [
              ///Logo and title
              const LogoTitle(),
              const SizedBox(height: 16),

              ///Form
              const LoginForm(),
              const SizedBox(height: 30),

              ///divider
              FormDivider(dark: dark, dividerText: "Or Sign In With"),
              const SizedBox(height: 16),

              ///footer
              const SignInOption(),
            ],
          ),
        ),
      ),
    );
  }
}
