import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_ecommerce_app/common/widgets/products/rating/rating_indicator.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                    backgroundImage: AssetImage(CImages.userProfileImage1)),
                const SizedBox(width: CSizes.spaceBtwItems),
                Text("Hakim Asimov",
                    style: Theme.of(context).textTheme.titleLarge)
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(height: CSizes.spaceBtwItems),

        /// Review

        Row(
          children: [
            const CRatingBarIndicator(rating: 4),
            const SizedBox(width: CSizes.spaceBtwItems),
            Text(
              '01 nov 2024',
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        const SizedBox(height: CSizes.spaceBtwItems),
        const ReadMoreText(
          'Ratings and reviews are verified and are from people who use the same type of device that u use ,of device that u use',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: '... show less',
          trimCollapsedText: '... show more',
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: CColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: CColors.primary),
        ),
        const SizedBox(height: CSizes.spaceBtwItems),

        /// Company Review
        CRoundedContainer(
          backgroundColor: dark ? CColors.darkerGrey : CColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(CSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("C's store",
                        style: Theme.of(context).textTheme.bodyLarge),
                    Text("16 Jan 2024",
                        style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(height: CSizes.spaceBtwItems),
                const ReadMoreText(
                  'Ratings and reviews are verified and are from people who use the same type of device that u use ,of device that u use',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: '... show less',
                  trimCollapsedText: '... show more',
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: CColors.primary),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: CColors.primary),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
