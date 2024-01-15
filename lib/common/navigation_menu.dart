import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:instapark/features/home/screen/home_screen.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationMenuController());

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
            NavigationDestination(icon: Icon(Iconsax.award), label: "Course"),
            NavigationDestination(icon: Icon(Iconsax.heart), label: "Events"),
            NavigationDestination(
                icon: Icon(Iconsax.archive_book), label: "Enrolled"),
            NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationMenuController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const HomeScreen(),
    Container(color: Colors.red),
    Container(color: Colors.blue),
    Container(color: Colors.green),
    Container(color: Colors.grey)
  ];
}
