import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_ecommerce_app/common/widgets/images/circular_image.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/product_price_text.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/enums.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';

class CProductMetaData extends StatelessWidget {
  const CProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = CHelperFunctions.isDarkMode(context);

    return Column(
      children: [
        /// Price & Sale Price

        Row(
          children: [
            /// Sale Tag

            CRoundedContainer(
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

            const SizedBox(width: CSizes.spaceBtwItems),

            /// Price
            Text(
              '\$250',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),

            const SizedBox(width: CSizes.spaceBtwItems),
            const CProductPriceText(price: '175', isLarge: true)
          ],
        ),

        const SizedBox(width: CSizes.spaceBtwItems / 1.5),

        /// Title

        const CProductTitleText(
          title: 'White sport shoes',
        ),
        const SizedBox(width: CSizes.spaceBtwItems / 1.5),

        /// Stock Status

        Row(children: [
          const CProductTitleText(title: 'Status'),
          const SizedBox(width: CSizes.spaceBtwItems),
          Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
        ]),

        const SizedBox(width: CSizes.spaceBtwItems / 1.5),

        /// Brand
        Row(children: [
          CCircularImage(
            image: CImages.productIllustration,
            width: 32,
            height: 32,
            overlayColor: darkMode ? CColors.white : CColors.black,
          ),
          const CBrandTitleWithVerifiedIcon(
            title: 'Nike',
            brandTextSize: TextSizes.medium,
          ),
        ])
      ],
    );
  }
}
