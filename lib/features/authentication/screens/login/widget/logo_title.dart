import 'package:flutter/material.dart';
import 'package:instapark/utils/constants/images_strings.dart';
import 'package:instapark/utils/constants/text_strings.dart';

class LogoTitle extends StatelessWidget {
  const LogoTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Image(
          height: 100,
          image: AssetImage(ImagesStrings.logoImage),
        ),
        Text(
          TextStrings.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          TextStrings.loginSubTitle,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
