import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/features/authentication/screens/signup/verify_email.dart';
import 'package:flutter_ecommerce_app/features/authentication/screens/signup/widgets/termandconditions.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/constants/text_string.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class CSignupForm extends StatelessWidget {
  const CSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: CTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: CSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: CTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: CSizes.spaceBtwInputFields),

          /// username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: CTexts.userName,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: CSizes.spaceBtwInputFields),

          /// Email
          TextFormField(
            decoration: const InputDecoration(
              labelText: CTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: CSizes.spaceBtwInputFields),

          /// Phone number
          TextFormField(
            decoration: const InputDecoration(
              labelText: CTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),

          const SizedBox(height: CSizes.spaceBtwInputFields),

          /// Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: CTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: CSizes.spaceBtwInputFields),

          /// Terms&condition checkBox

          const CTermsAndConditionsCheckBox(),
          const SizedBox(height: CSizes.spaceBtwInputFields),

          /// Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: const Text(CTexts.createAccount),
            ),
          )
        ],
      ),
    );
  }
}
