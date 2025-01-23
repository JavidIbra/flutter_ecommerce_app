import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/product_details/widgets/bottom_add_to_card_widget.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: const CBottomAddToCard(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Product Image Slider

            const CProductImageSlider(),

            /// Product details

            Padding(
              padding: const EdgeInsets.only(
                  right: CSizes.defaultSpace,
                  left: CSizes.defaultSpace,
                  bottom: CSizes.defaultSpace),
              child: Column(
                children: [
                  ///  - Rating & share
                  const CRatingAndShare(),

                  ///  - Price , title, stock, & Brand
                  const CProductMetaData(),

                  ///  - Attributes
                  const ProductAttributes(),
                  const SizedBox(height: CSizes.spaceBtwSections),

                  ///  - Checkout Button

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('CheckOut')),
                  ),
                  const SizedBox(height: CSizes.spaceBtwSections),

                  ///  - Description
                  const CSectionHeading(title: 'Description'),
                  const SizedBox(height: CSizes.spaceBtwItems),
                  const ReadMoreText(
                    'Salamamammamasmdmmad amammdamdmdmda almddsdfcdsfds almddsdf cdsfdsalmddsdfcdsfdsalmd dsdfcdsfdsalmddsdfcdsfds',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  ///  - Reviews
                  const Divider(),
                  const SizedBox(height: CSizes.spaceBtwItems / 2),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CSectionHeading(title: 'Reviews(100)'),
                        IconButton(
                          onPressed: () =>
                              Get.to(() => const ProductReviewsScreen()),
                          icon: const Icon(
                            Iconsax.arrow_right3,
                            size: 18,
                            color: Colors.black,
                          ),
                        ),
                      ]),
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
