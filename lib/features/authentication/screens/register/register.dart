import 'package:flutter/material.dart';

import 'package:instapark/common/widgets/form_divider.dart';
import 'package:instapark/common/widgets/sign_in_options.dart';
import 'package:instapark/features/authentication/screens/register/widget/register_form.dart';
import 'package:instapark/utils/helpers/helper_functions.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create your account",
                style: TextStyle(
                  color: dark ? Colors.white : Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 24),
              const RegisterForm(),
              const SizedBox(height: 24),

              ///divider
              FormDivider(dark: dark, dividerText: "Or Sign Up With"),
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
