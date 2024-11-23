import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_ecommerce_app/common/widgets/images/circular_image.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';

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
                  const SizedBox(height: CSizes.spaceBtwSections),

                  /// --UserProfile
                  const ListTile(
                    leading: CCircularImage(image: CImages.user),
                  )
                ],
              ),
            ),

            /// --Body
          ],
        ),
      ),
    );
  }
}
