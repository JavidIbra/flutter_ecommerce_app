import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_ecommerce_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class CSortableProducts extends StatelessWidget {
  const CSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// DropDown
        DropdownButtonFormField(
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value) {},
          items: [
            'Name',
            'Higher Price',
            'lower price',
            'Sale',
            'Newest',
            'popularity'
          ]
              .map(
                (option) =>
                    DropdownMenuItem(value: option, child: Text(option)),
              )
              .toList(),
        ),
        const SizedBox(height: CSizes.spaceBtwSections),

        /// Products

        CGridLayout(
            itemCount: 4,
            itemBuilder: (_, index) => const CProductCardVertical())
      ],
    );
  }
}
