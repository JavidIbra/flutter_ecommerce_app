import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/styles/spacing_styles.dart';
import 'package:flutter_ecommerce_app/common/widgets/login_signup/form_divider.dart';
import 'package:flutter_ecommerce_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:flutter_ecommerce_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:flutter_ecommerce_app/common/widgets/login_signup/social_buttons.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/constants/text_string.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: Padding(
            padding: CSpacingStyle.paddingWithAppBarHeight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                /// Logo title and sub title
                CLoginHeader(dark: dark),

                /// Form
                const CLoginForm(),

                /// Divider
                CFormDivider(dividertext: CTexts.orSignInWith.capitalize!),

                const SizedBox(height: CSizes.spaceBtwSections),

                /// Footer

                const SocialButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
