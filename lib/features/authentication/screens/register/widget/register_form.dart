import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:instapark/features/authentication/screens/register/verify_email.dart';
import 'package:instapark/features/authentication/screens/register/widget/term_condition.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: 'First Name',
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: 'Last Name',
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.user_edit), labelText: "Username"),
          ),
          const SizedBox(height: 10),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct), labelText: "E-Mail"),
          ),
          const SizedBox(height: 10),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.call), labelText: "Phone"),
          ),
          const SizedBox(height: 10),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
                labelText: "Password"),
          ),
          const SizedBox(height: 10),
          // TextFormField(
          //   decoration: const InputDecoration(
          //       prefixIcon: Icon(Iconsax.password_check),
          //       labelText: "Confirm Password"),
          // ),
          const TermAndCondition(),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: const Text("Create Account"),
            ),
          ),
        ],
      ),
    );
  }
}
