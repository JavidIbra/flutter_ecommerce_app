import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);

    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Product Image Slider

            CProductImageSlider(),

            /// Product details

            Padding(
              padding: EdgeInsets.only(
                  right: CSizes.defaultSpace,
                  left: CSizes.defaultSpace,
                  bottom: CSizes.defaultSpace),
              child: Column(
                children: [
                  ///  - Rating & share
                  ///  - Price , title, stock, & Brand
                  ///  - Attributes
                  ///  - Checkout Button
                  ///  - Description
                  ///  - Reviews
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
