import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:flutter_ecommerce_app/common/widgets/icons/c_circular_icon.dart';
import 'package:flutter_ecommerce_app/common/widgets/images/rounded_image.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class CProductImageSlider extends StatelessWidget {
  const CProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);
    return CCurvedEdgesWidget(
      child: Container(
        color: dark ? CColors.darkerGrey : CColors.light,
        child: Stack(
          children: [
            /// Main large Image
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(CSizes.productImageRadius * 2),
                child: Center(
                    child: Image(image: AssetImage(CImages.productImage5))),
              ),
            ),

            /// Image Slider

            Positioned(
              right: 0,
              bottom: 30,
              left: CSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  separatorBuilder: (_, __) => const SizedBox(
                    width: CSizes.spaceBtwItems,
                  ),
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (_, index) => CRoundedImage(
                      width: 80,
                      backgroundColor: dark ? CColors.black : CColors.white,
                      border: Border.all(color: CColors.primary),
                      padding: const EdgeInsets.all(CSizes.sm),
                      imageUrl: CImages.productImage3),
                ),
              ),
            ),

            /// AppBar Icons

            const CAppBar(
              showBackArrow: true,
              actions: [
                CCircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
