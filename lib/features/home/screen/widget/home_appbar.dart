import 'package:flutter/material.dart';
import 'package:instapark/common/widgets/appbar/appbar.dart';
import 'package:instapark/common/widgets/courses/cart/cart_menu_icon.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppbar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Continue you classes",
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: Colors.white),
          ),
          Text(
            "Alok Sharma",
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: Colors.white),
          ),
        ],
      ),
      actions: [CartCounterIcon(iconColor: Colors.white, onPressed: () {})],
    );
  }
}
