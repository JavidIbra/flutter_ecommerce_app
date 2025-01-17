import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_ecommerce_app/common/widgets/images/rounded_image.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: CAppBar(
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CSizes.defaultSpace),
          child: ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (_, __) =>
                const SizedBox(height: CSizes.spaceBtwSections),
            itemCount: 4,
            itemBuilder: (_, index) => Column(
              children: [
                CCartItem(dark: dark)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CCartItem extends StatelessWidget {
  const CCartItem({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Image
        CRoundedImage(
          imageUrl: CImages.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(CSizes.sm),
          backgroundColor: dark ? CColors.darkGrey : CColors.light,
        ),
        const SizedBox(width: CSizes.spaceBtwItems),
    
        /// Title , price , size
    
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CBrandTitleWithVerifiedIcon(title: 'Nike'),
              const Flexible(
                child: CProductTitleText(
                  title: 'Black Sport shoes',
                  maxLines: 1,
                ),
              ),
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: 'Color',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: 'Green',
                    style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(
                    text: 'Size',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: 'Uk 08',
                    style: Theme.of(context).textTheme.bodyLarge),
              ]))
            ],
          ),
        ),
      ],
    );
  }
}
