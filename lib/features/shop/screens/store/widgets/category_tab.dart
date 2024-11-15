import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/brands/brand_show_case.dart';
import 'package:flutter_ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_ecommerce_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';

class CCategoryTab extends StatelessWidget {
  const CCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(CSizes.defaultSpace),
          child: Column(
            children: [
              /// -- Brands
              const CBrandShowcase(
                images: [
                  CImages.productImage3,
                  CImages.productImage2,
                  CImages.productImage1
                ],
              ),
              const CBrandShowcase(
                images: [
                  CImages.productImage3,
                  CImages.productImage2,
                  CImages.productImage1
                ],
              ),
              const SizedBox(height: CSizes.spaceBtwItems),

              /// -- Products
              CSectionHeading(
                title: "You might like",
                onPressed: () {},
              ),
              const SizedBox(height: CSizes.spaceBtwItems),

              CGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => CProductCardVertical(),
              ),
              const SizedBox(height: CSizes.spaceBtwItems),
            ],
          ),
        ),
      ],
    );
  }
}
