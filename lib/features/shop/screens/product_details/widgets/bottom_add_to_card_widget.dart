import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/icons/c_circular_icon.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class CBottomAddToCard extends StatelessWidget {
  const CBottomAddToCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);

    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: CSizes.defaultSpace, vertical: CSizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: dark ? CColors.darkGrey : CColors.light,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(CSizes.cardRadiusLg),
            topRight: Radius.circular(CSizes.cardRadiusLg)),
      ),
      child: Row(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const CCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: CColors.darkGrey,
                width: 40,
                height: 40,
                color: CColors.white,
              ),
              const SizedBox(width: CSizes.spaceBtwItems),
              Text(
                '2',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(width: CSizes.spaceBtwItems),
              const CCircularIcon(
                icon: Iconsax.add,
                backgroundColor: CColors.black,
                width: 40,
                height: 40,
                color: CColors.white,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(CSizes.md),
                      backgroundColor: CColors.black,
                      side: const BorderSide(color: CColors.black)),
                  child: const Text('Add to Cart'))
            ],
          )
        ],
      ),
    );
  }
}
