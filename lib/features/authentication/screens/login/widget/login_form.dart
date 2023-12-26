import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

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
                prefixIcon: Icon(Iconsax.direct_right), labelText: "Email"),
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
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text("Remember me")
                ],
              ),

              TextButton(
                onPressed: () {},
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
              onPressed: () {},
              child: const Text("Create Account"),
            ),
          ),
        ],
      ),
    );
  }
}
