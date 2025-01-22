import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/icons/c_circular_icon.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class CProductQuantityWithAddRemoveButton extends StatelessWidget {
  const CProductQuantityWithAddRemoveButton({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: CSizes.md,
          color: dark ? CColors.white : CColors.black,
          backgroundColor: dark ? CColors.darkerGrey : CColors.light,
        ),
        const SizedBox(width: CSizes.spaceBtwItems),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: CSizes.spaceBtwItems),
        const CCircularIcon(
          icon: Iconsax.add,
          width: 20,
          height: 20,
          size: CSizes.md,
          color: CColors.white,
          backgroundColor: CColors.primary,
        ),
      ],
    );
  }
}
