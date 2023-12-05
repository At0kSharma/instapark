import 'package:flutter/material.dart';
import 'package:instapark/utils/constants/images_strings.dart';
import 'package:instapark/utils/constants/text_strings.dart';
import 'package:instapark/utils/helpers/helper_functions.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              Column(
                children: [
                  Image(
                    width: HelperFunctions.screenWidth() * 0.8,
                    height: HelperFunctions.screenHeight() * 0.8,
                    image: const AssetImage(ImagesStrings.onBoardingImage1),
                  ),
                  Text(
                    TextStrings.onBoardingtitle1,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  Text(
                    TextStrings.onBoardingSubtitle1,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
