import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instapark/common/widgets/success_screen.dart';
import 'package:instapark/features/authentication/screens/login/login.dart';
import 'package:instapark/utils/constants/images_strings.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Image(
                image: AssetImage(ImagesStrings.onBoardingImage1), width: 250),
            const SizedBox(height: 30),
            const Text(
              "Verify your email address!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            const Text(
              "youremail@gmail.com",
            ),
            const SizedBox(height: 10),
            const Text(
              "We have sent you verification mail! Please verify before proceding further.",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(() => SuccessScreen(
                        title: "Account is Verified",
                        subTitle:
                            "Welcome to our family, you can now explore without any restriction",
                        imageString: ImagesStrings.onBoardingImage3,
                        onPressed: () => Get.to(() => const LoginScreen()),
                      )),
                  child: const Text("Continue")),
            ),
            const SizedBox(height: 10),
            TextButton(onPressed: () {}, child: const Text("Resend email")),
          ],
        ),
      ),
    );
  }
}
