import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/chips/choice_chip.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/product_price_text.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);

    return Column(
      children: [
        /// Selected Attribute pricing & Description
        CRoundedContainer(
          padding: const EdgeInsets.all(CSizes.md),
          backgroundColor: dark ? CColors.darkGrey : CColors.grey,
          child: Column(
            children: [
              /// Title , Price and Stock Status
              Row(
                children: [
                  const CSectionHeading(
                    title: 'Variaton',
                    showActionButton: false,
                  ),
                  const SizedBox(width: CSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const CProductTitleText(
                            title: 'Price : ',
                            smallSize: true,
                          ),

                          /// Actual Price
                          Text(
                            '\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: CSizes.spaceBtwItems),

                          /// Sale Price
                          const CProductPriceText(
                            price: '20',
                          ),
                        ],
                      ),

                      /// Stock
                      Row(
                        children: [
                          const CProductTitleText(
                            title: 'Stock : ',
                            smallSize: true,
                          ),
                          Text(
                            '\$25',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),

              /// Variation Description

              const CProductTitleText(
                title:
                    'This is the Description of the Product and it can go up to max 4 lines',
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),

        const SizedBox(height: CSizes.spaceBtwItems),

        /// --- Attributes

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CSectionHeading(title: 'Colors', showActionButton: false),
            const SizedBox(height: CSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                CChoiceChip(
                  text: 'Green',
                  selected: true,
                  onSelected: (value) {},
                ),
                CChoiceChip(
                  text: 'Blue',
                  selected: false,
                  onSelected: (value) {},
                ),
                CChoiceChip(
                  text: 'Yellow',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CSectionHeading(title: 'Size'),
            const SizedBox(height: CSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                CChoiceChip(
                  text: 'EU 34',
                  selected: true,
                  onSelected: (value) {},
                ),
                CChoiceChip(
                  text: 'EU 36',
                  selected: false,
                  onSelected: (value) {},
                ),
                CChoiceChip(
                  text: 'EU 38',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
