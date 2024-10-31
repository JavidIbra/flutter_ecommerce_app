import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class CSearchContainer extends StatelessWidget {
  const CSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_favorite,
    this.showBackgreound = true,
    this.showborder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: CSizes.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final bool showBackgreound, showborder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final darkMode = CHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
            width: CDeviceUtils.getScreenWidth(context),
            padding: const EdgeInsets.all(CSizes.md),
            decoration: BoxDecoration(
              color: showBackgreound
                  ? darkMode
                      ? CColors.dark
                      : CColors.light
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(CSizes.cardRadiusLg),
              border: showborder ? Border.all(color: CColors.grey) : null,
            ),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: CColors.darkerGrey,
                ),
                const SizedBox(
                  width: CSizes.spaceBtwItems,
                ),
                Text(
                  text,
                  style: Theme.of(context).textTheme.bodySmall,
                )
              ],
            )),
      ),
    );
  }
}
