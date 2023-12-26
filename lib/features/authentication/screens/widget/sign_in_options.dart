import 'package:flutter/material.dart';
import 'package:instapark/utils/constants/images_strings.dart';

class SignInOption extends StatelessWidget {
  const SignInOption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(100),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Image(
                width: 30,
                image: AssetImage(ImagesStrings.googleImage),
              ),
            )),
      ],
    );
  }
}
