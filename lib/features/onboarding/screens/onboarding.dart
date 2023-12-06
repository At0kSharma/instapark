import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instapark/features/onboarding/controllers/onboarding_controller.dart';
import 'package:instapark/features/onboarding/screens/widgets/onboarding_dot_navigation.dart';
import 'package:instapark/features/onboarding/screens/widgets/onboarding_next_button.dart';
import 'package:instapark/features/onboarding/screens/widgets/onboarding_page.dart';
import 'package:instapark/features/onboarding/screens/widgets/onboarding_skip.dart';
import 'package:instapark/utils/constants/images_strings.dart';
import 'package:instapark/utils/constants/text_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: ImagesStrings.onBoardingImage1,
                title: TextStrings.onBoardingtitle1,
                subTitle: TextStrings.onBoardingSubtitle1,
              ),
              OnBoardingPage(
                image: ImagesStrings.onBoardingImage2,
                title: TextStrings.onBoardingtitle2,
                subTitle: TextStrings.onBoardingSubtitle2,
              ),
              OnBoardingPage(
                image: ImagesStrings.onBoardingImage3,
                title: TextStrings.onBoardingtitle3,
                subTitle: TextStrings.onBoardingSubtitle3,
              ),
            ],
          ),

          ///Skip Button
          const OnBoardingSkip(),

          ///Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          ///Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
