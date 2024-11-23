import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_ecommerce_app/common/widgets/images/circular_image.dart';
import 'package:flutter_ecommerce_app/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:flutter_ecommerce_app/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// -- Header
            CPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// -- AppBar
                  CAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: CColors.white),
                    ),
                  ),

                  /// --UserProfile
                  const CUserProfileTile(),
                  const SizedBox(height: CSizes.spaceBtwSections),
                ],
              ),
            ),

            /// --Body

            Padding(
              padding: const EdgeInsets.all(CSizes.defaultSpace),
              child: Column(
                children: [
                  /// -- Account Settings

                  const CSectionHeading(title: 'Account Settings'),
                  const SizedBox(height: CSizes.spaceBtwItems),

                  CSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: "My Adresses",
                    subTitle: 'Set shopping delivery address',
                    onTop: () {},
                  ),
                  CSettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: "My Cart",
                    subTitle: 'Add ,remove products and move to checkout',
                    onTop: () {},
                  ),
                  CSettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: "My Orders",
                    subTitle: 'In-Progress and Completed Oreders',
                    onTop: () {},
                  ),
                  CSettingsMenuTile(
                    icon: Iconsax.bank,
                    title: "Bank Account",
                    subTitle: 'WithDraw balance to registered bank account',
                    onTop: () {},
                  ),
                  CSettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: "My Coupons",
                    subTitle: 'List of all the discounted coupons',
                    onTop: () {},
                  ),
                  CSettingsMenuTile(
                    icon: Iconsax.notification,
                    title: "Notifications",
                    subTitle: 'Set any kind of notification message',
                    onTop: () {},
                  ),
                  CSettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: "Notifications",
                    subTitle: 'Manage data usage and connected accounts',
                    onTop: () {},
                  ),

                  /// -- App Settings

                  const SizedBox(height: CSizes.spaceBtwSections),
                  const CSectionHeading(
                    title: 'App Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(height: CSizes.spaceBtwItems),
                  const CSettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subTitle: 'Upload Data to your Cloud Firebase',
                  ),
                  CSettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subTitle: 'Set recomendation based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  CSettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subTitle: 'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  CSettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'Hd Image Quality',
                    subTitle: 'Set image quality to be seen',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  /// -- Logout Button

                  const SizedBox(height: CSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Logout'),
                    ),
                  ),
                  const SizedBox(height: CSizes.spaceBtwSections),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
