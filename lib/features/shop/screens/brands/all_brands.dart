import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_ecommerce_app/common/widgets/brands/brand_card.dart';
import 'package:flutter_ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_ecommerce_app/common/widgets/products/sortable/sortable_product.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/brands/brand_products.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:get/get.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CAppBar(
        title: Text('Brand'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CSizes.defaultSpace),
          child: Column(
            children: [
              /// Heading
              const CSectionHeading(title: 'Brands', showActionButton: false),
              const SizedBox(height: CSizes.spaceBtwItems),

              /// Brands
              CGridLayout(
                itemCount: 10,
                mainAxisExtent: 80,
                itemBuilder: (context, index) => CBrandCard(
                  showBorder: true,
                  onTap: () => Get.to(() => const BrandProducts()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
