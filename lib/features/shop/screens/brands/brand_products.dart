import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_ecommerce_app/common/widgets/brands/brand_card.dart';
import 'package:flutter_ecommerce_app/common/widgets/products/sortable/sortable_product.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CAppBar(
        title: Text('Nike'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(CSizes.defaultSpace),
          child: Column(
            children: [
              /// Brand Detail
              CBrandCard(showBorder: true),
              SizedBox(height: CSizes.spaceBtwSections),

              CSortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
