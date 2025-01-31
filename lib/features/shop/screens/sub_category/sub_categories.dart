import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_ecommerce_app/common/widgets/images/rounded_image.dart';
import 'package:flutter_ecommerce_app/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CAppBar(
        title: Text('Sports'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CSizes.defaultSpace),
          child: Column(
            children: [
              /// Banner
              const CRoundedImage(
                imageUrl: CImages.productImage2,
                width: double.infinity,
                height: 250,
                applyImageRadius: true,
              ),
              const SizedBox(height: CSizes.spaceBtwSections),

              /// SubCategories

              Column(
                children: [
                  /// Heading
                  CSectionHeading(title: 'Sport Shoes', onPressed: () {}),
                  const SizedBox(height: CSizes.spaceBtwSections / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: CSizes.spaceBtwItems),
                        itemBuilder: (context, index) =>
                            const CProductCardHorizontal()),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
