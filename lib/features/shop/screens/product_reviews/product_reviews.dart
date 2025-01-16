import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_ecommerce_app/common/widgets/products/rating/rating_indicator.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        /// appbar

        appBar: const CAppBar(
          title: Text('Reviews & Ratings'),
          showBackArrow: true,
        ),

        /// Body
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(CSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Ratings and reviews are verified and are from people who use the same type of device that u use '),
              const SizedBox(height: CSizes.spaceBtwItems),

              /// overall product ratings

              const COverallProductRating(),
              const CRatingBarIndicator(
                rating: 3.5,
              ),
              Text(
                '12.611',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: CSizes.spaceBtwSections),

              /// User Reviews List
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ));
  }
}
