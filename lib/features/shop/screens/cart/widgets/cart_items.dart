import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/products/cart/add_remove_button.dart';
import 'package:flutter_ecommerce_app/common/widgets/products/cart/cart_item.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/product_price_text.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';

class CCartItems extends StatelessWidget {
  const CCartItems({super.key, this.showAddRemoveButton = true});

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 4,
      separatorBuilder: (_, __) =>
          const SizedBox(height: CSizes.spaceBtwSections),
      itemBuilder: (_, index) => Column(
        children: [
          CCartItem(dark: dark),
          if (showAddRemoveButton) const SizedBox(height: CSizes.spaceBtwItems),

          /// Add Remove button Row with total Price
          if (showAddRemoveButton)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  /// extra space
                  const SizedBox(width: 70),

                  /// Add Remove Buttons
                  CProductQuantityWithAddRemoveButton(dark: dark),
                ]),

                /// Product Total Price
                const CProductPriceText(price: '256'),
              ],
            )
        ],
      ),
    );
  }
}
