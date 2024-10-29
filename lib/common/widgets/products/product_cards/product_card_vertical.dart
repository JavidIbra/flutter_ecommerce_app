import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/styles/shadows.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_ecommerce_app/common/widgets/images/rounded_images.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';

class CProductCardVertical extends StatelessWidget {
  const CProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);

    ///Container with side paddings color edges radius and shadow
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          boxShadow: [CShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(CSizes.productImageRadius),
          color: dark ? CColors.darkGrey : CColors.white),
      child: Column(
        children: [
          /// Thumbnail,WhishList button Discount tag

          CRoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(CSizes.sm),
            backgroundColor: dark ? CColors.dark : CColors.light,
            child: Stack(
              children: [
                /// ThumbNail Image
                CRoundedImage(imageUrl: CImages.darkAppLogo)
              ],
            ),
          ),

          /// details
        ],
      ),
    );
  }
}
