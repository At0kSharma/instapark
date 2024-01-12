import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:instapark/features/authentication/screens/login/reset_password.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 26,
            right: 26,
            bottom: 26,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Forget Password",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              const Text(
                "Enter you register email to received",
              ),
              const SizedBox(height: 60),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: "Email",
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () =>
                        Get.offAll(() => const ResetPasswordScreen()),
                    child: const Text("Submit")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
