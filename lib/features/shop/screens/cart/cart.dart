import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/checkout/checkout.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

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
      body: const Padding(
        padding: EdgeInsets.all(CSizes.defaultSpace),

        ///  -- Items in cart
        child: CCartItems(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(CSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => const CheckoutScreen()),
          child: const Text('Checkout \$256.0'),
        ),
      ),
    );
  }
}
