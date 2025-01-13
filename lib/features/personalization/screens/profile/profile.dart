import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_ecommerce_app/common/widgets/images/circular_image.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce_app/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CAppBar(
        showBackArrow: true,
        title: Text("Profile"),
      ),

      /// -- Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CSizes.defaultSpace),
          child: Column(
            children: [
              /// profile pic
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const CCircularImage(
                      image: CImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text("Change Profile Image"))
                  ],
                ),
              ),

              /// Details
              const SizedBox(height: CSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: CSizes.spaceBtwItems),

              /// Heading Profile Info

              const CSectionHeading(
                title: "Profile Information",
                showActionButton: false,
              ),
              const SizedBox(height: CSizes.spaceBtwItems),

              CProfileMenu(
                title: 'Name',
                value: 'Coding with C',
                onPressed: () {},
              ),
              CProfileMenu(
                title: 'UserName',
                value: 'Coding_with_C',
                onPressed: () {},
              ),

              const SizedBox(height: CSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: CSizes.spaceBtwItems),

              /// Heading Personal Info

              const CSectionHeading(
                title: "Personal Information",
                showActionButton: false,
              ),
              const SizedBox(height: CSizes.spaceBtwItems),

              CProfileMenu(
                onPressed: () {},
                title: 'User ID',
                value: '45689',
                icon: Iconsax.copy,
              ),
              CProfileMenu(
                  onPressed: () {}, title: 'Email', value: 'c@mail.ru'),
              CProfileMenu(
                  onPressed: () {}, title: 'Phone Number', value: '45689'),
              CProfileMenu(onPressed: () {}, title: 'Gender', value: 'Male'),
              CProfileMenu(
                  onPressed: () {},
                  title: 'Date of Birth',
                  value: '27.02.1995'),
              const Divider(),
              const SizedBox(height: CSizes.spaceBtwItems),

              Center(
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Close Account',
                      style: TextStyle(color: Colors.red),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
