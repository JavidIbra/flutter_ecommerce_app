import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/styles/shadows.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_ecommerce_app/common/widgets/icons/c_circular_icon.dart';
import 'package:flutter_ecommerce_app/common/widgets/images/rounded_image.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/product_price_text.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class CProductCardHorizontal extends StatelessWidget {
  const CProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);

    /// Container with side paddings , color, edges, radius and shadow
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(CSizes.productImageRadius),
          color: dark ? CColors.darkGrey : CColors.softGrey),
      child: Row(
        children: [
          /// ThumbNail
          CRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(CSizes.sm),
            backgroundColor: dark ? CColors.dark : CColors.light,
            child: Stack(
              children: [
                /// ThumbNail Image
                const SizedBox(
                  height: 120,
                  width: 120,
                  child: CRoundedImage(
                    imageUrl: CImages.productImage3,
                    applyImageRadius: true,
                  ),
                ),

                /// Sale tag
                Positioned(
                  top: 10,
                  child: CRoundedContainer(
                    radius: CSizes.sm,
                    backgroundColor: CColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: CSizes.sm, vertical: CSizes.xs),
                    child: Text(
                      '25%',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: CColors.black),
                    ),
                  ),
                ),

                /// Favourite Icon Button
                const Positioned(
                  top: 0,
                  right: 0,
                  child: CCircularIcon(
                    icon: Iconsax.heart5,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),

          /// Details
          SizedBox(
            width: 172,

            /// Price
            child: Padding(
              padding: const EdgeInsets.only(top: CSizes.sm, left: CSizes.sm),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CProductTitleText(
                          title: 'Green Nike Half Sleeves Shirt',
                          smallSize: true),
                      SizedBox(height: CSizes.spaceBtwItems / 2),
                      CBrandTitleWithVerifiedIcon(title: 'Nike'),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Pricing
                      const Flexible(child: CProductPriceText(price: '250')),

                      /// Add to Cart
                      Container(
                        decoration: const BoxDecoration(
                          color: CColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(CSizes.cardRadiusMd),
                            bottomRight:
                                Radius.circular(CSizes.productImageRadius),
                          ),
                        ),
                        child: const SizedBox(
                          width: CSizes.iconLg * 1.2,
                          height: CSizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(
                              Iconsax.add,
                              color: CColors.white,
                            ),
                          ),
                        ),
                      ),
                    ],

                    /// Add to cart
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
