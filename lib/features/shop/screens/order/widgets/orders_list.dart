import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class COrderListItems extends StatelessWidget {
  const COrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 3,
      separatorBuilder: (_, __) => const SizedBox(height: CSizes.spaceBtwItems),
      itemBuilder: (_, index) => CRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(CSizes.md),
        backgroundColor: dark ? CColors.dark : CColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// Row-1
            Row(
              children: [
                /// 1- Icon
                const Icon(Iconsax.ship),
                const SizedBox(width: CSizes.spaceBtwItems / 2),

                /// 2 - Status and Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(color: CColors.primary, fontWeightDelta: 1),
                      ),
                      Text('30 January 2025',
                          style: Theme.of(context).textTheme.headlineSmall),
                    ],
                  ),
                ),

                /// 3 Icon
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Iconsax.arrow_right_34,
                    size: CSizes.iconSm,
                  ),
                ),
              ],
            ),
            const SizedBox(height: CSizes.spaceBtwItems),

            /// Row-2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      /// 1- Icon
                      const Icon(Iconsax.tag),
                      const SizedBox(width: CSizes.spaceBtwItems / 2),

                      /// 2 - Status and Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order',
                                style: Theme.of(context).textTheme.labelMedium),
                            Text('[#2556f2]',
                                style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      /// 1- Icon
                      const Icon(Iconsax.calendar),
                      const SizedBox(width: CSizes.spaceBtwItems / 2),

                      /// 2 - Status and Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shipping Date',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text('03 February 2025',
                                style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
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
