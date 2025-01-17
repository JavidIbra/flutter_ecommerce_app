import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_ecommerce_app/features/personalization/screens/address/add_new_address.dart';
import 'package:flutter_ecommerce_app/features/personalization/screens/address/widgets/single_address.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(
          () => const AddNewAddressScreen(),
        ),
        backgroundColor: CColors.primary,
        child: const Icon(Iconsax.add, color: CColors.white),
      ),
      appBar: CAppBar(
        showBackArrow: true,
        title:
            Text("Addresses", style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(CSizes.defaultSpace),
          child: Column(
            children: [
              CSingleAddress(selectedAddress: true),
              CSingleAddress(selectedAddress: false),
            ],
          ),
        ),
      ),
    );
  }
}
