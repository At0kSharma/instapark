import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instapark/features/authentication/screens/login/login.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.title,
    required this.subTitle,
    required this.imageString,
    required this.onPressed,
  });
  final String title, subTitle, imageString;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 100),
            Image(image: AssetImage(imageString), width: 250),
            const SizedBox(height: 30),
            Text(
              title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            Text(
              subTitle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(() => const LoginScreen()),
                  child: const Text("Continue")),
            ),
          ],
        ),
      ),
    );
  }
}
