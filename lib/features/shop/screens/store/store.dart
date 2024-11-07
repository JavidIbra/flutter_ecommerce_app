import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_ecommerce_app/common/widgets/appbar/tabbar.dart';
import 'package:flutter_ecommerce_app/common/widgets/brands/brand_card.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_ecommerce_app/common/widgets/layouts/grid_layout.dart';
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
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: CAppBar(
          title:
              Text('Store', style: Theme.of(context).textTheme.headlineMedium),
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

                      /// -- Brands Grid

                      CGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return const CBrandCard(
                            showBorder: false,
                          );
                        },
                      ),
                    ],
                  ),
                ),

                /// Tabs
                bottom: const CTabbar(tabs: [
                  Tab(child: Text('Sports')),
                  Tab(child: Text('Furniture')),
                  Tab(child: Text('Electronics')),
                  Tab(child: Text('Clothes')),
                  Tab(child: Text('Cosmetics'))
                ]),
              ),
            ];
          },

          /// Tabs

          body: TabBarView(
            children: [
              Padding(
                padding: const EdgeInsets.all(CSizes.defaultSpace),
                child: Column(
                  children: [
                    /// -- Brands
                    CBrandShowcase(),

                    /// -- Products
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

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

          /// Brand Top 3 Product Images
          Row(
            children: [
              Expanded(
                child: CRoundedContainer(
                  height: 100,
                  backgroundColor: CHelperFunctions.isDarkMode(context)
                      ? CColors.darkGrey
                      : CColors.light,
                  margin: const EdgeInsets.only(right: CSizes.sm),
                  padding: const EdgeInsets.all(CSizes.md),
                  child: const Image(
                    fit: BoxFit.contain,
                    image: AssetImage(CImages.productImage3),
                  ),
                ),
              ),
              Expanded(
                child: CRoundedContainer(
                  height: 100,
                  backgroundColor: CHelperFunctions.isDarkMode(context)
                      ? CColors.darkGrey
                      : CColors.light,
                  margin: const EdgeInsets.only(right: CSizes.sm),
                  padding: const EdgeInsets.all(CSizes.md),
                  child: const Image(
                    fit: BoxFit.contain,
                    image: AssetImage(CImages.productImage3),
                  ),
                ),
              ),
              Expanded(
                child: CRoundedContainer(
                  height: 100,
                  backgroundColor: CHelperFunctions.isDarkMode(context)
                      ? CColors.darkGrey
                      : CColors.light,
                  margin: const EdgeInsets.only(right: CSizes.sm),
                  padding: const EdgeInsets.all(CSizes.md),
                  child: const Image(
                    fit: BoxFit.contain,
                    image: AssetImage(CImages.productImage3),
                  ),
                ),
              ),
            ],
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
        backgroundColor: ,
      ),
    );
  }
}
