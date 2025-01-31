import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_ecommerce_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/all_products/all_products.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CPrimaryHeaderContainer(
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
                  ),
                  SizedBox(height: CSizes.spaceBtwSections),
                ],
              ),
            ),

            /// Body

            Padding(
              padding: const EdgeInsets.all(CSizes.defaultSpace),
              child: Column(
                children: [
                  /// PromoSlider

                  const CPromoSlider(banners: [
                    CImages.promoBanner1,
                    CImages.promoBanner2,
                    CImages.promoBanner3
                  ]),

                  const SizedBox(height: CSizes.spaceBtwSections),

                  /// Heading
                  CSectionHeading(
                    title: 'Popular Products',
                    onPressed: () => Get.to(() => const AllProducts()),
                  ),
                  const SizedBox(height: CSizes.spaceBtwSections),

                  /// Popular Products
                  CGridLayout(
                    itemCount: 2,
                    itemBuilder: (_, index) => const CProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
