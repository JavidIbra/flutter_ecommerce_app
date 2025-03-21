import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_ecommerce_app/common/widgets/products/cart/coupon_widget.dart';
import 'package:flutter_ecommerce_app/common/widgets/success_screen/success_screen.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:flutter_ecommerce_app/navigation_menu.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);
    return Scaffold(
        appBar: CAppBar(
          showBackArrow: true,
          title: Text('Order Review',
              style: Theme.of(context).textTheme.headlineSmall),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(CSizes.defaultSpace),
            child: Column(
              children: [
                /// -- Items in cart

                const CCartItems(showAddRemoveButton: false),
                const SizedBox(height: CSizes.spaceBtwSections),

                /// -- coupon textfield
                CCouponCode(dark: dark),
                const SizedBox(height: CSizes.spaceBtwSections),

                /// -- Billing Section

                CRoundedContainer(
                  showBorder: true,
                  padding: const EdgeInsets.all(CSizes.md),
                  backgroundColor: dark ? CColors.black : CColors.white,
                  child: const Column(
                    children: [
                      /// Pricing

                      CBillingAmountSection(),
                      SizedBox(height: CSizes.spaceBtwItems),

                      /// Divider

                      Divider(),

                      /// Payment Methods

                      CBillingPaymentSection(),
                      SizedBox(height: CSizes.spaceBtwItems / 2),

                      /// Address
                      CBillingAdressSection(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),

        /// Checkout button
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(CSizes.defaultSpace),
          child: ElevatedButton(
            onPressed: () => Get.to(() => SuccessScreen(
                  image: CImages.successfulPaymentIcon,
                  title: 'Payment Success',
                  subTitle: 'Your item will be shipped soon',
                  onPressed: () => Get.offAll(() => const NavigationMenu()),
                )),
            child: const Text('Checkout \$256.0'),
          ),
        ));
  }
}
