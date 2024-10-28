import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// AppBar

                  CHomeAppBar(),
                  SizedBox(height: CSizes.spaceBtwSections),

                  /// SearchBar
                  CSearchContainer(text: "Search in Store"),
                  SizedBox(height: CSizes.spaceBtwSections),

                  /// Categories
                  Padding(
                    padding: EdgeInsets.only(left: CSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// Heading
                        CSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: CColors.white,
                        ),
                        SizedBox(height: CSizes.spaceBtwItems),

                        /// Categories
                        CHomeCategories(),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
