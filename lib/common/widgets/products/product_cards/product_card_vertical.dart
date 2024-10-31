import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/styles/shadows.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_ecommerce_app/common/widgets/icons/c_circular_icon.dart';
import 'package:flutter_ecommerce_app/common/widgets/images/rounded_images.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/product_price_text.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class CProductCardVertical extends StatelessWidget {
  const CProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);

    ///Container with side paddings color edges radius and shadow
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [CShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(CSizes.productImageRadius),
            color: dark ? CColors.darkGrey : CColors.white),
        child: Column(
          children: [
            /// Thumbnail,WhishList button Discount tag

            CRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(CSizes.sm),
              backgroundColor: dark ? CColors.dark : CColors.light,
              child: Stack(
                children: [
                  /// ThumbNail Image
                  const CRoundedImage(
                    imageUrl: CImages.productImage1,
                    applyImageRadius: true,
                  ),

                  /// Sale tag

                  Positioned(
                    top: 7,
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

            const SizedBox(height: CSizes.spaceBtwItems / 2),

            /// Details

            Padding(
              padding: const EdgeInsets.only(left: CSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CProductTitleText(
                    title: 'Grey Nike Air Shoes',
                    smallSize: true,
                  ),
                  const SizedBox(height: CSizes.spaceBtwItems / 2),
                  Row(
                    children: [
                      Text(
                        'Nike',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(width: CSizes.xs),
                      const Icon(
                        Iconsax.verify5,
                        color: CColors.primary,
                        size: CSizes.iconXs,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const Spacer(),

            /// Price row

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///Price
                const Padding(
                  padding: EdgeInsets.only(left: CSizes.sm),
                  child: CProductPriceText(price: '35.0'),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: CColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(CSizes.cardRadiusMd),
                      bottomRight: Radius.circular(CSizes.productImageRadius),
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
            ),
          ],
        ),
      ),
    );
  }
}
