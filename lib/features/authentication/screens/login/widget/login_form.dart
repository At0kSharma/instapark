import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:instapark/features/authentication/screens/login/forget_password.dart';
import 'package:instapark/features/authentication/screens/register/register.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          ///email
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: "Email",
            ),
          ),
          const SizedBox(height: 16),

          ///password
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: "Password",
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),

          ///Remember me / forget password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ///remember me
              Row(
                children: [
                  SizedBox(
                      height: 24,
                      width: 24,
                      child: Checkbox(value: true, onChanged: (value) {})),
                  const Text("Remember me")
                ],
              ),

              TextButton(
                onPressed: () => Get.to(() => const ForgetPassword()),
                child: const Text("Forget Password"),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),

          /// sign in button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Sign In"),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () => Get.to(() => const RegisterScreen()),
              child: const Text("Create Account"),
            ),
          ),
        ],
      ),
    );
  }
}
