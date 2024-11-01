import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_ecommerce_app/common/widgets/images/circular_image.dart';
import 'package:flutter_ecommerce_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          CCartCounterIcon(
            onPressed: () {},
            iconColor: Colors.black,
          ),
        ],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: CHelperFunctions.isDarkMode(context)
                    ? CColors.black
                    : CColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(CSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      /// Search bar
                      const SizedBox(height: CSizes.spaceBtwItems),
                      const CSearchContainer(
                        text: 'Search in Store',
                        showborder: true,
                        showBackgreound: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: CSizes.spaceBtwSections),

                      /// -- Featured Brands

                      CSectionHeading(
                        title: 'Featured Brands',
                        showActionButton: true,
                        onPressed: () {},
                      ),
                      const SizedBox(height: CSizes.spaceBtwItems / 1.5),

                      CRoundedContainer(
                        padding: const EdgeInsets.all(CSizes.sm),
                        showBorder: true,
                        backgroundColor: Colors.transparent,
                        child: Row(
                          children: [
                            ///ICon

                            CCircularImage(
                              isNetworkImage: false,
                              backgroundColor: Colors.transparent,
                              image: CImages.facebook,
                              overlayColor: CHelperFunctions.isDarkMode(context)
                                  ? CColors.white
                                  : CColors.black,
                            ),
                            const SizedBox(width: CSizes.spaceBtwItems / 2),

                            /// Text

                            Column(
                              children: [],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: Container()),
    );
  }
}
