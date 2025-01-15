import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class CRatingBarIndicator extends StatelessWidget {
  const CRatingBarIndicator({
    super.key,
    required this.rating,
  });
  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: 3.5,
      itemSize: 20,
      unratedColor: CColors.grey,
      itemBuilder: (_, __) => const Icon(Iconsax.star1, color: CColors.primary),
    );
  }
}
