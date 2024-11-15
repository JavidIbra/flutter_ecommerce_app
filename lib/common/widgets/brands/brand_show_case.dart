import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/brands/brand_card.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';

class CBrandShowcase extends StatelessWidget {
  const CBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return CRoundedContainer(
      showBorder: true,
      borderColor: CColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(CSizes.md),
      margin: const EdgeInsets.only(bottom: CSizes.spaceBtwItems),
      child: Column(
        children: [
          /// Brand with Products Count
          const CBrandCard(
            showBorder: false,
          ),
          const SizedBox(height: CSizes.spaceBtwItems),

          /// Brand Top 3 Product Images
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          )
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
      child: CRoundedContainer(
        height: 100,
        padding: const EdgeInsets.all(CSizes.md),
        margin: const EdgeInsets.only(right: CSizes.sm),
        backgroundColor: CHelperFunctions.isDarkMode(context)
            ? CColors.darkGrey
            : CColors.light,
        child: Image(fit: BoxFit.contain, image: AssetImage(image)),
      ),
    );
  }
}
