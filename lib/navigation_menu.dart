import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/home/home.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/store/store.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = CHelperFunctions.isDarkMode(context);

    return Scaffold(
        bottomNavigationBar: Obx(
          () => NavigationBar(
            height: 60,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (value) =>
                controller.selectedIndex.value = value,
            backgroundColor: darkMode ? CColors.black : Colors.white,
            indicatorColor: darkMode
                ? CColors.white.withOpacity(0.1)
                : CColors.black.withOpacity(0.1),
            destinations: const [
              NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
              NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
              NavigationDestination(
                  icon: Icon(Iconsax.heart), label: 'WishList'),
              NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile')
            ],
          ),
        ),
        body: Obx(
          () => controller.screens[controller.selectedIndex.value],
        ));
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    Container(
      color: Colors.cyan,
    ),
    Container(
      color: Colors.teal,
    )
  ];
}
