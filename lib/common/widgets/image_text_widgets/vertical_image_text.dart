import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';

class CVerticalImageText extends StatelessWidget {
  const CVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = CColors.white,
    this.backgroundColor = CColors.white,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: CSizes.spaceBtwItems),
        child: Column(
          ///Circular Icon
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(CSizes.sm),
              decoration: BoxDecoration(
                color:
                    backgroundColor ?? (dark ? CColors.black : CColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: const AssetImage(CImages.facebook),
                  fit: BoxFit.cover,
                  color: dark ? CColors.light : CColors.dark,
                ),
              ),
            ),
            const SizedBox(height: CSizes.spaceBtwItems / 2),
            SizedBox(
              width: 55,
              child: Text(
                'Shoes',
                style: Theme.of(context).textTheme.labelMedium!.apply(
                      color: CColors.white,
                    ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
