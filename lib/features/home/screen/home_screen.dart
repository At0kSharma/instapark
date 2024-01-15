import 'package:flutter/material.dart';
import 'package:instapark/features/home/screen/widget/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 360,
              child: Column(
                children: [
                  HomeAppBar(),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(0),
              height: 500,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                ),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
