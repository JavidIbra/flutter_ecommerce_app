import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: CColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(CImages.google),
              width: CSizes.iconMd,
              height: CSizes.iconMd,
            ),
          ),
        ),
        const SizedBox(width: CSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: CColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(CImages.facebook),
              width: CSizes.iconMd,
              height: CSizes.iconMd,
            ),
          ),
        ),
      ],
    );
  }
}
